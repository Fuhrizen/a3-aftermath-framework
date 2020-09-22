DB_id = round(random(9999));
compileFinal (str DB_id);
try {
    _result = "extDB3" callExtension format ["9:ADD_DATABASE:%1",getText(missionConfigFile >> "TODO" >> "DatabaseName")];
    if (!(_result isEqualTo "[1]")) throw "extDB3: Error with Database Connection";
    _result = "extDB3" callExtension format ["9:ADD_DATABASE_PROTOCOL:%2:SQL:%1:TEXT2",DB_id,getText(missionConfigFile >> "TODO" >> "DatabaseName")];
    if (!(_result isEqualTo "[1]")) throw "extDB3: Error with Database Connection";
} catch {
    diag_log _exception;
};
"extDB3" callExtension "9:LOCK";