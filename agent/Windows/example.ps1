
$xml = '<EXAMPLE>'
$xml += '<COLUMN_1> 42 </COLUMN_1>'
$xml += '<COLUMN_2> TEXT DATA EXAMPLE </COLUMN_2>'
$xml += '</EXAMPLE>'


[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
[Console]::WriteLine($xml)
