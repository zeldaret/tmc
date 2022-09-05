# Configuration file for https://mcss.mosra.cz/documentation/doxygen/
DOXYFILE = 'Doxyfile'
MAIN_PROJECT_URL = 'https://github.com/zeldaret/tmc'
SHOW_UNDOCUMENTED = True
SEARCH_RESULT_ID_BYTES = 4
SEARCH_FILE_OFFSET_BYTES = 4
SEARCH_NAME_SIZE_BYTES = 2
SEARCH_DOWNLOAD_BINARY = True
LINKS_NAVBAR1 = [
    ('Modules', 'modules', []),
    ('Pages', 'pages', [])
]
LINKS_NAVBAR2 = [
    ('Classes', 'annotated', []),
    ('Files', 'files', [])
]
STYLESHEETS = [
    'https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400i,600,600i%7CSource+Code+Pro:400,400i,600',
    '../css/m-dark+documentation.compiled.css',
    'docs/doxygen/style.css'
]
FAVICON = 'https://zelda64.dev/favicon.ico'