CREATE TABLE ARTICLE
(
  ID INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  CREATOR VARCHAR(255) DEFAULT 'System',
  CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  MODIFIER VARCHAR(255) DEFAULT 'System',
  MODIFY_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  STATUS INTEGER DEFAULT '1',
  CATE_ID INTEGER NOT NULL,
  USER_ID INTEGER NOT NULL,
  ALIAS VARCHAR(255) DEFAULT 'NULL',
  TITLE VARCHAR(255) NOT NULL,
  INTRO CLOB,
  CONTENT CLOB NOT NULL,
  TAG_NUM INTEGER DEFAULT '0',
  COMMENT_NUM INTEGER DEFAULT '0',
  VIEW_NUM INTEGER DEFAULT '0',
  TEMPLATE VARCHAR(255) DEFAULT 'NULL',
  TAG_IDS VARCHAR(255)
);
COMMENT ON COLUMN ARTICLE.ID IS '';
COMMENT ON COLUMN ARTICLE.CREATOR IS '';
COMMENT ON COLUMN ARTICLE.CREATE_TIME IS '';
COMMENT ON COLUMN ARTICLE.MODIFIER IS '';
COMMENT ON COLUMN ARTICLE.MODIFY_TIME IS '';
COMMENT ON COLUMN ARTICLE.STATUS IS '';
COMMENT ON COLUMN ARTICLE.CATE_ID IS '';
COMMENT ON COLUMN ARTICLE.USER_ID IS '';
COMMENT ON COLUMN ARTICLE.ALIAS IS '';
COMMENT ON COLUMN ARTICLE.TITLE IS '';
COMMENT ON COLUMN ARTICLE.INTRO IS '';
COMMENT ON COLUMN ARTICLE.CONTENT IS '';
COMMENT ON COLUMN ARTICLE.TAG_NUM IS '';
COMMENT ON COLUMN ARTICLE.COMMENT_NUM IS '';
COMMENT ON COLUMN ARTICLE.VIEW_NUM IS '';
COMMENT ON COLUMN ARTICLE.TEMPLATE IS '';
COMMENT ON COLUMN ARTICLE.TAG_IDS IS '';
CREATE TABLE CATEGORY
(
  ID INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  CREATOR VARCHAR(255) DEFAULT 'System',
  CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  MODIFIER VARCHAR(255) DEFAULT 'System',
  MODIFY_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  STATUS INTEGER DEFAULT '1',
  NAME VARCHAR(255) NOT NULL,
  SORT INTEGER DEFAULT '1',
  COUNT INTEGER DEFAULT '0',
  ALIAS VARCHAR(255) DEFAULT 'NULL',
  INTRO CLOB,
  PARENT INTEGER DEFAULT '0',
  TEMPLATE VARCHAR(255) DEFAULT 'NULL'
);
COMMENT ON COLUMN CATEGORY.ID IS '';
COMMENT ON COLUMN CATEGORY.CREATOR IS '';
COMMENT ON COLUMN CATEGORY.CREATE_TIME IS '';
COMMENT ON COLUMN CATEGORY.MODIFIER IS '';
COMMENT ON COLUMN CATEGORY.MODIFY_TIME IS '';
COMMENT ON COLUMN CATEGORY.STATUS IS '';
COMMENT ON COLUMN CATEGORY.NAME IS '';
COMMENT ON COLUMN CATEGORY.SORT IS '';
COMMENT ON COLUMN CATEGORY.COUNT IS '';
COMMENT ON COLUMN CATEGORY.ALIAS IS '';
COMMENT ON COLUMN CATEGORY.INTRO IS '';
COMMENT ON COLUMN CATEGORY.PARENT IS '';
COMMENT ON COLUMN CATEGORY.TEMPLATE IS '';
CREATE TABLE COMMENT
(
  ID INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  CREATOR VARCHAR(255) DEFAULT 'System',
  CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  MODIFIER VARCHAR(255) DEFAULT 'System',
  MODIFY_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  STATUS INTEGER DEFAULT '1',
  ARTICLE_ID INTEGER NOT NULL,
  PARENT_ID INTEGER DEFAULT '0',
  USER_ID INTEGER NOT NULL,
  TITLE VARCHAR(255) NOT NULL,
  CONTENT CLOB NOT NULL,
  IP VARCHAR(255) DEFAULT 'NULL',
  AGENT VARCHAR(255) DEFAULT 'NULL'
);
COMMENT ON COLUMN COMMENT.ID IS '';
COMMENT ON COLUMN COMMENT.CREATOR IS '';
COMMENT ON COLUMN COMMENT.CREATE_TIME IS '';
COMMENT ON COLUMN COMMENT.MODIFIER IS '';
COMMENT ON COLUMN COMMENT.MODIFY_TIME IS '';
COMMENT ON COLUMN COMMENT.STATUS IS '';
COMMENT ON COLUMN COMMENT.ARTICLE_ID IS '';
COMMENT ON COLUMN COMMENT.PARENT_ID IS '';
COMMENT ON COLUMN COMMENT.USER_ID IS '';
COMMENT ON COLUMN COMMENT.TITLE IS '';
COMMENT ON COLUMN COMMENT.CONTENT IS '';
COMMENT ON COLUMN COMMENT.IP IS '';
COMMENT ON COLUMN COMMENT.AGENT IS '';
CREATE TABLE CONFIG
(
  ID INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  CREATOR VARCHAR(255) DEFAULT 'System',
  CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  MODIFIER VARCHAR(255) DEFAULT 'System',
  MODIFY_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  STATUS INTEGER DEFAULT '1',
  NAME VARCHAR(2147483647) NOT NULL,
  CONTENT CLOB NOT NULL
);
COMMENT ON COLUMN CONFIG.ID IS '';
COMMENT ON COLUMN CONFIG.CREATOR IS '';
COMMENT ON COLUMN CONFIG.CREATE_TIME IS '';
COMMENT ON COLUMN CONFIG.MODIFIER IS '';
COMMENT ON COLUMN CONFIG.MODIFY_TIME IS '';
COMMENT ON COLUMN CONFIG.STATUS IS '';
COMMENT ON COLUMN CONFIG.NAME IS '';
COMMENT ON COLUMN CONFIG.CONTENT IS '';
CREATE UNIQUE INDEX "CONFIG_NAME_uindex" ON CONFIG (NAME);
CREATE TABLE PERMISSION
(
  ID INTEGER PRIMARY KEY NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  URL VARCHAR(255) DEFAULT 'NULL',
  DESCRIPTION CLOB,
  CREATOR VARCHAR(255) DEFAULT 'System',
  CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  MODIFIER VARCHAR(255) DEFAULT 'System',
  MODIFY_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  STATUS INTEGER DEFAULT '0'
);
COMMENT ON COLUMN PERMISSION.ID IS '';
COMMENT ON COLUMN PERMISSION.NAME IS '';
COMMENT ON COLUMN PERMISSION.URL IS '';
COMMENT ON COLUMN PERMISSION.DESCRIPTION IS '';
COMMENT ON COLUMN PERMISSION.CREATOR IS '';
COMMENT ON COLUMN PERMISSION.CREATE_TIME IS '';
COMMENT ON COLUMN PERMISSION.MODIFIER IS '';
COMMENT ON COLUMN PERMISSION.MODIFY_TIME IS '';
COMMENT ON COLUMN PERMISSION.STATUS IS '';
CREATE TABLE ROLE
(
  ID INTEGER PRIMARY KEY NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  PERMISSIONS CLOB NOT NULL,
  DESCRIPTION CLOB,
  CREATOR VARCHAR(255) DEFAULT 'System',
  CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  MODIFIER VARCHAR(255) DEFAULT 'System',
  MODIFY_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  STATUS INTEGER DEFAULT '1'
);
COMMENT ON COLUMN ROLE.ID IS '';
COMMENT ON COLUMN ROLE.NAME IS '';
COMMENT ON COLUMN ROLE.PERMISSIONS IS '';
COMMENT ON COLUMN ROLE.DESCRIPTION IS '';
COMMENT ON COLUMN ROLE.CREATOR IS '';
COMMENT ON COLUMN ROLE.CREATE_TIME IS '';
COMMENT ON COLUMN ROLE.MODIFIER IS '';
COMMENT ON COLUMN ROLE.MODIFY_TIME IS '';
COMMENT ON COLUMN ROLE.STATUS IS '';
CREATE TABLE TAG
(
  ID INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  CREATOR VARCHAR(255) DEFAULT 'System',
  CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  MODIFIER VARCHAR(255) DEFAULT 'System',
  MODIFY_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  STATUS INTEGER DEFAULT '1',
  NAME VARCHAR(255) NOT NULL,
  SORT INTEGER DEFAULT '1',
  COUNT INTEGER DEFAULT '0',
  ALIAS VARCHAR(255) DEFAULT 'NULL',
  INTRO CLOB,
  TEMPLATE VARCHAR(255) DEFAULT 'NULL'
);
COMMENT ON COLUMN TAG.ID IS '';
COMMENT ON COLUMN TAG.CREATOR IS '';
COMMENT ON COLUMN TAG.CREATE_TIME IS '';
COMMENT ON COLUMN TAG.MODIFIER IS '';
COMMENT ON COLUMN TAG.MODIFY_TIME IS '';
COMMENT ON COLUMN TAG.STATUS IS '';
COMMENT ON COLUMN TAG.NAME IS '';
COMMENT ON COLUMN TAG.SORT IS '';
COMMENT ON COLUMN TAG.COUNT IS '';
COMMENT ON COLUMN TAG.ALIAS IS '';
COMMENT ON COLUMN TAG.INTRO IS '';
COMMENT ON COLUMN TAG.TEMPLATE IS '';
CREATE TABLE TEMPLATE
(
  ID INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  CREATOR VARCHAR(255) DEFAULT 'System',
  CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  MODIFIER VARCHAR(255) DEFAULT 'System',
  MODIFY_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  STATUS INTEGER DEFAULT '1',
  USER_ID INTEGER NOT NULL,
  TITLE VARCHAR(255) NOT NULL,
  CONTENT CLOB NOT NULL,
  ALIAS VARCHAR(255) DEFAULT 'NULL'
);
COMMENT ON COLUMN TEMPLATE.ID IS '';
COMMENT ON COLUMN TEMPLATE.CREATOR IS '';
COMMENT ON COLUMN TEMPLATE.CREATE_TIME IS '';
COMMENT ON COLUMN TEMPLATE.MODIFIER IS '';
COMMENT ON COLUMN TEMPLATE.MODIFY_TIME IS '';
COMMENT ON COLUMN TEMPLATE.STATUS IS '';
COMMENT ON COLUMN TEMPLATE.USER_ID IS '';
COMMENT ON COLUMN TEMPLATE.TITLE IS '';
COMMENT ON COLUMN TEMPLATE.CONTENT IS '';
COMMENT ON COLUMN TEMPLATE.ALIAS IS '';
CREATE TABLE UPLOAD
(
  ID INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  CREATOR VARCHAR(255) DEFAULT 'System',
  CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  MODIFIER VARCHAR(255) DEFAULT 'System',
  MODIFY_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  STATUS INTEGER DEFAULT '1',
  USER_ID INTEGER DEFAULT '0',
  SIZE INTEGER NOT NULL,
  NAME VARCHAR(255) NOT NULL,
  SOURCE VARCHAR(255) NOT NULL,
  MIME_TYPE VARCHAR(255) NOT NULL,
  DOWN_NUMS INTEGER DEFAULT '0',
  ARTICLE_ID INTEGER DEFAULT '0',
  INTRO CLOB
);
COMMENT ON COLUMN UPLOAD.ID IS '';
COMMENT ON COLUMN UPLOAD.CREATOR IS '';
COMMENT ON COLUMN UPLOAD.CREATE_TIME IS '';
COMMENT ON COLUMN UPLOAD.MODIFIER IS '';
COMMENT ON COLUMN UPLOAD.MODIFY_TIME IS '';
COMMENT ON COLUMN UPLOAD.STATUS IS '';
COMMENT ON COLUMN UPLOAD.USER_ID IS '';
COMMENT ON COLUMN UPLOAD.SIZE IS '';
COMMENT ON COLUMN UPLOAD.NAME IS '';
COMMENT ON COLUMN UPLOAD.SOURCE IS '';
COMMENT ON COLUMN UPLOAD.MIME_TYPE IS '';
COMMENT ON COLUMN UPLOAD.DOWN_NUMS IS '';
COMMENT ON COLUMN UPLOAD.ARTICLE_ID IS '';
COMMENT ON COLUMN UPLOAD.INTRO IS '';
CREATE TABLE USER
(
  ID INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
  ROLE INTEGER DEFAULT '1',
  NAME VARCHAR(50) NOT NULL,
  PASSWORD VARCHAR(50) NOT NULL,
  EMAIL VARCHAR(50) NOT NULL,
  IP VARCHAR(15) DEFAULT 'NULL',
  ALIAS VARCHAR(50) DEFAULT 'NULL',
  INTRO CLOB,
  ARTICLES INTEGER DEFAULT '0',
  PAGES INTEGER DEFAULT '0',
  COMMENTS INTEGER DEFAULT '0',
  UPLOADS INTEGER DEFAULT '0',
  SIGN VARCHAR(255) DEFAULT 'NULL',
  CREATOR VARCHAR(255) DEFAULT 'System',
  CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  MODIFIER VARCHAR(255) DEFAULT 'System',
  MODIFY_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
  STATUS INTEGER DEFAULT '1'
);
COMMENT ON COLUMN USER.ID IS '';
COMMENT ON COLUMN USER.ROLE IS '';
COMMENT ON COLUMN USER.NAME IS '';
COMMENT ON COLUMN USER.PASSWORD IS '';
COMMENT ON COLUMN USER.EMAIL IS '';
COMMENT ON COLUMN USER.IP IS '';
COMMENT ON COLUMN USER.ALIAS IS '';
COMMENT ON COLUMN USER.INTRO IS '';
COMMENT ON COLUMN USER.ARTICLES IS '';
COMMENT ON COLUMN USER.PAGES IS '';
COMMENT ON COLUMN USER.COMMENTS IS '';
COMMENT ON COLUMN USER.UPLOADS IS '';
COMMENT ON COLUMN USER.SIGN IS '';
COMMENT ON COLUMN USER.CREATOR IS '';
COMMENT ON COLUMN USER.CREATE_TIME IS '';
COMMENT ON COLUMN USER.MODIFIER IS '';
COMMENT ON COLUMN USER.MODIFY_TIME IS '';
COMMENT ON COLUMN USER.STATUS IS '';