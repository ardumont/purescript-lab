module.exports = function(grunt) {
    "use strict";

    grunt.initConfig({
        srcFiles: ["bower_components/**/src/**/*.purs",
                   "src/**/*.purs",
                   "src/*.purs"],
        psc: {
            options: {
                main: "Chapter2",
                modules: ["Chapter2",
                          "data/PhoneBook.purs"]
            },
            all: {
                src: ["<%=srcFiles%>"],
                dest: "dist/Main.js"
            }
        },
        dotPsci: ["<%=srcFiles%>"],
        exec: {
            run: {
                cmd: "node dist/Main.js"
            }
        }
    });

    grunt.loadNpmTasks("grunt-purescript");
    grunt.loadNpmTasks("grunt-exec");

    grunt.registerTask("default", ["psc:all", "dotPsci"]);
};
