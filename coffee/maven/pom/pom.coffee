#!/usr/bin/env coffee

pom =
  project:
    # model version is always 4.0.0 for Maven 2.x POMs
    modelVersion: '4.0.0'
 
    # project coordinates, i.e. a group of values which
    # uniquely identify this project 
    groupId: 'com.example.app'
    artifactId: 'my-app'
    version: '1.0'

    # library dependencies
    dependencies: [

      # coordinates of the required library 
      dependency: groupId: 'junit', artifactId: 'junit', version: '3.8.1', scope: 'test',
    ]

console.log '%j', pom
