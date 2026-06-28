// ============================================================================
// AI for Excel - Session 1 solution query
// Cleans regional-sales-RAW.csv into a trustworthy, refreshable table.
// Paste into Power Query's Advanced Editor. Update the file path on line 8.
// Comments mark the decisions worth discussing in class.
// ============================================================================
let
    Source = Csv.Document(
        File.Contents("C:\path\to\regional-sales-RAW.csv"),
        [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]),

    // 1. Drop the 3 junk rows (title, "Generated...", blank), promote headers
    RemoveTop = Table.Skip(Source, 3),
    Headers   = Table.PromoteHeaders(RemoveTop, [PromoteAllScalars=true]),

    // 2. Trim + clean text columns before doing anything else
    Trimmed = Table.TransformColumns(Headers,
        {{"Region", Text.Trim, type text},
         {"Sales Rep", Text.Trim, type text},
         {"Product", Text.Trim, type text}}),
    Cleaned = Table.TransformColumns(Trimmed,
        {{"Product", Text.Clean, type text}}),

    // 3. Standardize Region to exactly North/South/East/West (else "Unknown")
    RegionFixed = Table.AddColumn(Cleaned, "RegionClean", each
        let r = Text.Lower(Text.Replace([Region], ".", "")) in
            if r = "" then "Unknown"
            else if Text.StartsWith(r, "n") then "North"
            else if Text.StartsWith(r, "s") then "South"
            else if Text.StartsWith(r, "e") then "East"
            else if Text.StartsWith(r, "w") then "West"
            else "Unknown",
        type text),
    DropOldRegion = Table.RemoveColumns(RegionFixed, {"Region"}),
    RenameRegion  = Table.RenameColumns(DropOldRegion, {{"RegionClean", "Region"}}),

    // 4. Standardize Sales Rep -> "First Last"
    RepFixed = Table.AddColumn(RenameRegion, "RepClean", each
        if Text.Contains([Sales Rep], ",")
        then Text.Trim(Text.AfterDelimiter([Sales Rep], ",")) & " "
           & Text.Trim(Text.BeforeDelimiter([Sales Rep], ","))
        else [Sales Rep], type text),
    DropOldRep   = Table.RemoveColumns(RepFixed, {"Sales Rep"}),
    RenameRep    = Table.RenameColumns(DropOldRep, {{"RepClean", "Sales Rep"}}),

    // 5. Proper-case Product so casing variants collapse
    ProductCase = Table.TransformColumns(RenameRep,
        {{"Product", Text.Proper, type text}}),

    // 6. Drop the trailing TOTAL row (its Order ID is blank) and any blank IDs
    RealRows = Table.SelectRows(ProductCase, each
        [Order ID] <> null and Text.StartsWith([Order ID], "SO-")),

    // 7. Clean Revenue: strip $ and commas, type as decimal
    RevText = Table.TransformColumns(RealRows,
        {{"Revenue", each Text.Replace(Text.Replace(_, "$", ""), ",", ""), type text}}),
    RevNum  = Table.TransformColumnTypes(RevText, {{"Revenue", type number}}),

    // 8. Quantity -> whole number. The "two" row errors; we remove errors here.
    //    DECISION: in real life you'd investigate, not silently drop. Discuss.
    QtyNum   = Table.TransformColumnTypes(RevNum, {{"Quantity", Int64.Type}}),
    NoErrors = Table.RemoveRowsWithErrors(QtyNum, {"Quantity"}),

    // 9. Dates -> real Date type (Power Query parses the mixed formats)
    Dated = Table.TransformColumnTypes(NoErrors, {{"Order Date", type date}}),

    // 10. Remove exact duplicate rows
    Deduped = Table.Distinct(Dated),

    // 11. Final column order
    Final = Table.ReorderColumns(Deduped,
        {"Order ID","Order Date","Region","Sales Rep","Product","Category","Quantity","Revenue"})
in
    Final
