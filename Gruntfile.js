packmodule.exports = function(grunt) {
    "use strict";

    grunt.initConfig({
        srcFiles: ["src/**/*.purs", "bower_components/**/src/**/*.purs"],
        psc: {
            options: {
                main: "Chapter2",
                modules: ["Chapter2",  "data/PhoneBook.purs"]
            },
            all: {
                src: ["<%=srcFiles%>"],
                dest: "dist/Main.js"
            }
        },
        dotPsci: ["<%=srcFiles%>"],
        execute: {
            run: {
                src: ["dist/Main.js"]
            }
        }
    });

    grunt.loadNpmTasks("grunt-purescript");
    grunt.loadNpmTasks("grunt-execute");

    grunt.registerTask("default", ["psc:all", "dotPsci"]);
};
