# John, A., Marchant, A. L., Fone, D. L., McGregor, J. I., Dennis, M. S., Tan, J. O. A., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"d7h6.","system":"readv2"},{"code":"d7ex.","system":"readv2"},{"code":"da32.","system":"readv2"},{"code":"da76.","system":"readv2"},{"code":"d76y.","system":"readv2"},{"code":"d7ez.","system":"readv2"},{"code":"d7e3.","system":"readv2"},{"code":"d7ay.","system":"readv2"},{"code":"d71e.","system":"readv2"},{"code":"d7e1.","system":"readv2"},{"code":"d733.","system":"readv2"},{"code":"d7h2.","system":"readv2"},{"code":"d73w.","system":"readv2"},{"code":"d73r.","system":"readv2"},{"code":"da75.","system":"readv2"},{"code":"d7g1.","system":"readv2"},{"code":"da24.","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('depression--phenotype-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["depression--phenotype-500mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["depression--phenotype-500mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["depression--phenotype-500mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)