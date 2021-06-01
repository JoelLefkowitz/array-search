module.exports = function (grunt) {
  grunt.initConfig({
    exec: {
      cspell: 'npx cspell ".*" "*" "**/*"',
      purty: 'for i in src test; do npx purty ./$i --write; done',
      nyc: 'nyc --clean -x ".spago/**" -x "**/foreign.js" -e ".purs" spago test --purs-args "-g sourcemaps"',
      prettier: "prettier . --ignore-path .gitignore --write",
      quickdocs: "quickdocs .quickdocs.yml",
      remark: "npx remark -r .remarkrc .",
      sphinx: "sphinx-build docs build",
    },
  });

  grunt.loadNpmTasks("grunt-exec");

  grunt.registerTask(
    "lint",
    "Lint the source code",
    ["cspell", "remark"].map((i) =>
      "exec:".concat(i)
    )
  );

  grunt.registerTask(
    "format",
    "Format the source code",
    ["prettier", "purty"].map((i) => "exec:".concat(i))
  );

  grunt.registerTask(
    "tests:unit", "Run unit tests", "exec:nyc"
  );

  grunt.registerTask(
    "docs:generate",
    "Generate a Sphinx documentation configuration",
    "exec:quickdocs"
  );

  grunt.registerTask(
    "docs:build",
    "Build documentation from a Sphinx configuration",
    "exec:sphinx"
  );

  grunt.registerTask(
    "precommit",
    "Run a sequence of precommit quality control tasks",
    ["lint", "tests:unit", "docs:generate"]
  );
};
