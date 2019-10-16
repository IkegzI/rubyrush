require 'read_xls'



spreadsheet = ::ReadXls.parse("./project8/4.xls")

spreadsheet.sheets.each do |sheet|
  sheet.rows.each do |columns|
    columns.each do |column|
      print column.force_encoding('binary').to_s + " || "
      print column.force_encoding("ISO-8859-15").encode("cp866") + '  '
    end
    puts
  end
end

