class CfgVirtualItems
{
    class General {
        /* Number of slots by deafult */
        DefaultSlots = 10;

        /* Default IMG in case the item Img is not defined ("") */
        DefaultIMG = "Textures\Logos\Logo.paa";

        IllegalItems[] = {
            "WoodAxe",
            "StoneAxe"
        };
    };

    class TypeForAllItems {
        Name = "All"; /* The identifier of this type */
        DisplayName = "All";
    };

    class Types {
        class Material {
            DisplayName = "Material";
        };

        class Tool {
            DisplayName = "Tool";
        };
    };

    class VirtualItems {
     /* class ItemName {    -> Name of the item
            Name = "";      -> Display name of the Item
            Weight = 1;      -> Slots the items occupy
            Img = "";       -> Image of the item
         };*/

        class Wood {
            Name = "Wood";
            Weight = 1;
            Img = "";
            Type = "Material";
            Info = "Just wood";
        };

        class Rock {
            Name = "Rock";
            Weight = 1;
            Img = "";
            Type = "Material";
            Info = "Just a rock";
        };

        class WoodAxe {
            Name = "Wooden Axe";
            Weight = 1;
            Img = "";
            Type = "Tool";
            Info = "Not a really good tool";
        };

        class StoneAxe {
            Name = "Stone Axe";
            Weight = 1;
            Img = "";
            Type = "Tool";
            Info = "Better than nothing";
        };
    };
};