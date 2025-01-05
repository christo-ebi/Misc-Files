
Copy the following to VSCode .code-snippets file.

`{"cgaurd": {
        "prefix": "cppgrd",
        "body": [
          "#ifndef ${RELATIVE_FILEPATH/(?:^.*\\\\src\\\\)?(\\w+)(?!\\w*$)|(\\W)|(\\w+)$/${1:/upcase}${2:+_}${3:/upcase}${3:+_}/g}",
          "#define ${RELATIVE_FILEPATH/(?:^.*\\\\src\\\\)?(\\w+)(?!\\w*$)|(\\W)|(\\w+)$/${1:/upcase}${2:+_}${3:/upcase}${3:+_}/g}",
          "\n#endif // ${RELATIVE_FILEPATH/(?:^.*\\\\src\\\\)?(\\w+)(?!\\w*$)|(\\W)|(\\w+)$/${1:/upcase}${2:+_}${3:/upcase}${3:+_}/g}"
        ]
      }
	}
`