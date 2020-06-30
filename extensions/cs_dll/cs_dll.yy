{
    "id": "746362ce-f241-49e8-99cc-abd084399684",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "cs_dll",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2020-03-30 12:06:40",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "eff64a44-ec69-4c4e-9732-62832d4952ab",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": -1,
            "filename": "Downloader.dll",
            "final": "",
            "functions": [
                {
                    "id": "70fb7313-10bc-4887-ab14-34a3528bcdac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "DownloadFile",
                    "help": "downloadFile(link, filenaName) ",
                    "hidden": false,
                    "kind": 1,
                    "name": "downloadFile",
                    "returnType": 2
                },
                {
                    "id": "bbf2b6df-ab53-4db7-8038-f7f08af5b4a3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "DownloadStatus",
                    "help": "downloadStatus(downloadId)",
                    "hidden": false,
                    "kind": 1,
                    "name": "downloadStatus",
                    "returnType": 2
                },
                {
                    "id": "75657afd-2ab4-40df-b6c4-67a875cae4e2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "DownloadDelete",
                    "help": "downloadDelete(downloadId)",
                    "hidden": false,
                    "kind": 1,
                    "name": "downloadDelete",
                    "returnType": 2
                },
                {
                    "id": "44f2a967-63b1-447d-90db-cf1d25a83467",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "DownloadResult",
                    "help": "downloadResult(downloadId)",
                    "hidden": false,
                    "kind": 1,
                    "name": "downloadResult",
                    "returnType": 1
                },
                {
                    "id": "c7dd29a5-1c7e-4ad1-a431-5e82b91f99ce",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "DownloadComplete",
                    "help": "downloadComplete(downloadId)",
                    "hidden": false,
                    "kind": 1,
                    "name": "downloadComplete",
                    "returnType": 2
                },
                {
                    "id": "d7578327-bf53-49e1-aa13-ba807d8c7fe6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "DownloadDirectory",
                    "help": "downloadDirectory(path)",
                    "hidden": false,
                    "kind": 1,
                    "name": "downloadDirectory",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                "70fb7313-10bc-4887-ab14-34a3528bcdac",
                "bbf2b6df-ab53-4db7-8038-f7f08af5b4a3",
                "75657afd-2ab4-40df-b6c4-67a875cae4e2",
                "44f2a967-63b1-447d-90db-cf1d25a83467",
                "c7dd29a5-1c7e-4ad1-a431-5e82b91f99ce",
                "d7578327-bf53-49e1-aa13-ba807d8c7fe6"
            ],
            "origname": "",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": -1,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "0.0.1"
}