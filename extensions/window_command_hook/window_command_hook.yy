{
    "id": "85267c21-83f4-4935-b116-0ca3965e15c3",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "window_command_hook",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 113497714299118,
    "date": "2020-02-18 12:04:20",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "603185d2-ea00-46a0-b25e-7c659b1cc2ad",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 113497714299118,
            "filename": "window_command_hook.dll",
            "final": "window_command_cleanup",
            "functions": [
                {
                    "id": "15e76268-12db-4339-9e03-7805f7bf3ac5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "window_command_run_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_run_raw",
                    "returnType": 2
                },
                {
                    "id": "e890c46b-3a1b-411f-ac66-9386ef599ac7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_command_cleanup",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_cleanup",
                    "returnType": 2
                },
                {
                    "id": "f7eef726-1488-47d9-b19d-dda993d1f380",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "window_command_init_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_init_raw",
                    "returnType": 2
                },
                {
                    "id": "99c3ccd9-fbb5-434e-9512-74f10b1447a5",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "window_command_bind_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_bind_raw",
                    "returnType": 2
                },
                {
                    "id": "2ed26e12-b39c-43e3-a505-0b36b11c6806",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_command_hook_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_hook_raw",
                    "returnType": 2
                },
                {
                    "id": "8b7509d1-26c7-490b-89be-97c7f3cf8518",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_unhook_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_unhook_raw",
                    "returnType": 2
                },
                {
                    "id": "d9a6dc19-f527-4d34-874a-0a9ecf4826bd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_command_get_active_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_get_active_raw",
                    "returnType": 2
                },
                {
                    "id": "ffe953c3-ff75-4d74-b834-5ac2b2306146",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "window_command_set_active_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_set_active_raw",
                    "returnType": 2
                },
                {
                    "id": "c98fb35e-ab00-4e56-9a25-5be88e279c3c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_check",
                    "help": "window_command_check(button) : Returns whether the given button was pressed since the last call to this function.",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_check",
                    "returnType": 2
                },
                {
                    "id": "a2a54114-2762-452c-aead-e347ecc7b1f2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "window_set_topmost_raw",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_topmost_raw",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                "15e76268-12db-4339-9e03-7805f7bf3ac5",
                "e890c46b-3a1b-411f-ac66-9386ef599ac7",
                "f7eef726-1488-47d9-b19d-dda993d1f380",
                "a2a54114-2762-452c-aead-e347ecc7b1f2",
                "99c3ccd9-fbb5-434e-9512-74f10b1447a5",
                "2ed26e12-b39c-43e3-a505-0b36b11c6806",
                "8b7509d1-26c7-490b-89be-97c7f3cf8518",
                "d9a6dc19-f527-4d34-874a-0a9ecf4826bd",
                "ffe953c3-ff75-4d74-b834-5ac2b2306146",
                "c98fb35e-ab00-4e56-9a25-5be88e279c3c"
            ],
            "origname": "extensions\\window_command_hook.dll",
            "uncompress": false
        },
        {
            "id": "59226403-4f9f-461c-84f1-ca6b0da34a48",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "f1037427-f8f1-47cb-9b4c-763ba1d99799",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_close",
                    "hidden": false,
                    "value": "$F060"
                },
                {
                    "id": "72694785-9d7e-4948-aaff-dd34423d2908",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_maximize",
                    "hidden": false,
                    "value": "$F030"
                },
                {
                    "id": "56e2a9c4-3141-46da-a8b5-aededd5f1bab",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_minimize",
                    "hidden": false,
                    "value": "$F020"
                },
                {
                    "id": "2f7d7be8-f8c0-4a2d-80b4-0b017ed3bc5e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_restore",
                    "hidden": false,
                    "value": "$F120"
                },
                {
                    "id": "0273d92e-42f1-4851-8a1c-5a62d0065c64",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_resize",
                    "hidden": false,
                    "value": "$F000"
                },
                {
                    "id": "141eaac8-20ac-4f45-95d3-a56263173a5e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "window_command_move",
                    "hidden": false,
                    "value": "$F010"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "window_command_hook.gml",
            "final": "",
            "functions": [
                {
                    "id": "8cee3d21-ec17-46d2-ac3a-9bda172a64ce",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "window_command_init",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_init",
                    "returnType": 2
                },
                {
                    "id": "248883b9-e300-4a8d-9e9d-acdc1f6ce37f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_hook",
                    "help": "window_command_hook(index) : Hooks the specified command ",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_hook",
                    "returnType": 2
                },
                {
                    "id": "59a0e7b8-099d-452f-85bc-2614e310ef4a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_unhook",
                    "help": "window_command_unhook(index)",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_unhook",
                    "returnType": 2
                },
                {
                    "id": "dfe64102-ac38-4ae2-8fd6-fbf32b88c000",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "window_command_run",
                    "help": "window_command_run(index, param = 0)",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_run",
                    "returnType": 2
                },
                {
                    "id": "dc0d6d9f-618e-4ccb-89c7-673193b67437",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_command_get_active",
                    "help": "window_command_get_active(command) : Returns whether the given command is currently available.",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_get_active",
                    "returnType": 2
                },
                {
                    "id": "bd37c1d7-a0ac-4663-ab3d-2da4f2feba97",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "window_command_set_active",
                    "help": "window_command_set_active(command, status:bool) : Enables\/disables the command. Returns -1 if not possible.",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_command_set_active",
                    "returnType": 2
                },
                {
                    "id": "96a6cf15-9b8f-4cc8-ad7a-c7193079b0a8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "window_set_topmost",
                    "help": "window_set_topmost(stayontop:bool) : Allows to set a window to show on top of the rest like with GM8.",
                    "hidden": false,
                    "kind": 11,
                    "name": "window_set_topmost",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                "8cee3d21-ec17-46d2-ac3a-9bda172a64ce",
                "248883b9-e300-4a8d-9e9d-acdc1f6ce37f",
                "59a0e7b8-099d-452f-85bc-2614e310ef4a",
                "dfe64102-ac38-4ae2-8fd6-fbf32b88c000",
                "dc0d6d9f-618e-4ccb-89c7-673193b67437",
                "bd37c1d7-a0ac-4663-ab3d-2da4f2feba97",
                "96a6cf15-9b8f-4cc8-ad7a-c7193079b0a8"
            ],
            "origname": "extensions\\gml.gml",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Proprietary",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 113497714299118,
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
    "version": "1.0.0"
}