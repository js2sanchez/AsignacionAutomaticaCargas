'use strict';
module.exports = function(grunt) {

	grunt.initConfig({
		less: {
			dist: {
				files: {
					'Content/css/main.min.css': [
						'Content/less/app.less'
					]
				},
				options: {
					compress: true,
					sourceMap: false,
				}
			}
		},
		clean: {
			dist: [
				'Content/css/main.min.css',
				//'js/scripts.min.js'
			]
		}
	});

    // Load tasks
    require('load-grunt-tasks')(grunt);

	// Register tasks
	grunt.registerTask('default', [
		'clean',
		'less'
	]);

};
