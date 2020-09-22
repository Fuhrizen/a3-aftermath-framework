class DefaultEventhandlers;
class CfgPatches {
    class FalloutServer {
        units[] = {};
        weapons[] = {};
        requiredAddons[] = {};
        fileName = "FalloutServer.pbo";
        author = "Koalas";
    };
};

class CfgFunctions {
    class MySQL_Database {
        tag = "DB";

        class MySQL
        {
            file = "\FalloutServer\Functions\MYSQL";
            class UpdateDBPartial {};
            class asyncCall {};
        };
    };

    class General {
        tag = "FTS";

        class Init
        {
            file = "\FalloutServer\Functions";
            class Init {
                postInit = 1;
            };
        };

        class VirtualItems
        {
            file = "\FalloutServer\Functions\VirtualItems";
            class VIHandler {};
            class VICheck {};
        };
    };
};