CREATE TABLE `allowedApprovers` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `approval` int(11) DEFAULT NULL,
   `approver` int(11) DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB;

 
 CREATE TABLE `approvals` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `label` varchar(255) DEFAULT NULL,
   `workflow` mediumtext,
   `workflowObj` text,
   `createTS` datetime DEFAULT NULL,
   `approvedTS` datetime DEFAULT NULL,
   `approver` int(11) DEFAULT NULL,
   `approved` int(11) DEFAULT NULL,
   `reason` text,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB;
 
 CREATE TABLE `approvers` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `userKey` varchar(255) DEFAULT NULL,
   `sn` varchar(255) DEFAULT NULL,
   `uid` varchar(255) DEFAULT NULL,
   `givenName` varchar(255) DEFAULT NULL,
   `mail` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB;
 
 CREATE TABLE `auditLogType` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `name` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB;
 
 insert into auditLogType (name) values ('Add');
 insert into auditLogType (name) values ('Delete');
 insert into auditLogType (name) values ('Replace');
 
 CREATE TABLE `auditLogs` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `isEntry` int(11) DEFAULT NULL,
   `actionType` int(11) DEFAULT NULL,
   `userid` int(11) DEFAULT NULL,
   `approval` int(11) DEFAULT NULL,
   `attribute` varchar(255) DEFAULT NULL,
   `val` text,
   `workflow` int(11) DEFAULT NULL,
   `target` int(11) DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB;
 
 CREATE TABLE `targets` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `name` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB;
 
 CREATE TABLE `users` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `userKey` varchar(255) DEFAULT NULL,
   `sn` varchar(255) DEFAULT NULL,
   `uid` varchar(255) DEFAULT NULL,
   `givenName` varchar(255) DEFAULT NULL,
   `mail` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB;
 
 CREATE TABLE `workflows` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `name` varchar(255) DEFAULT NULL,
   `startTS` datetime DEFAULT NULL,
   `completeTS` datetime DEFAULT NULL,
   `userid` int(11) DEFAULT NULL,
   `requestReason` text,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB;
 
 CREATE TABLE `escalation` (
   `id` int(11) NOT NULL AUTO_INCREMENT,
   `approval` int(11) DEFAULT NULL,
   `whenTS` datetime DEFAULT NULL,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB;

