/*
Set the below in tsconfig.json to import the json into the .ts file
 "esModuleInterop":true,
    "resolveJsonModule":true,
*/

import envList from '../assets/runtime-environment.json'

export const environment = {
    name:envList.name,
    port:envList.port
};

console.log(environment)