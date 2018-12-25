alter table chapter_section_map drop foreign key FK9my0mbna9ig6pr1wwqy4qqixc;
alter table consignee_details drop foreign key FKi4mxaqyqp7wkpqo4p9ayn3h9r;
alter table consignee_details drop foreign key FKc1gdbm1lvuuyi61h576v8hfoc;
alter table credit_note_items drop foreign key FKq8gytm7mbgsb41fvwltp4ismb;
alter table credit_note_tax_items drop foreign key FKsr43ceofgh1uijiq8qnyyp7m6;
alter table customer_details drop foreign key FK4x9ulrs0saogxanowr0t7kp3c;
alter table customer_details drop foreign key FK6wmpn60654md0tff94bgixt17;
alter table hsn_chapter_map drop foreign key FKjoau5whxtwlibhjgwd5bcingd;
alter table inventorydetails drop foreign key FK2mgrkrap531bv5n24wrov6vod;
alter table inventoryrefilldetails drop foreign key FKcl85x6orcvcmnl6ie8a8crh3;
alter table inventoryrefilldetails drop foreign key FK2m6bm87mhglms578wu4nmwi02;
alter table invoicedetails drop foreign key FK5dasf6qdva5lkfu9i5cs55pur;
alter table invoicedetails drop foreign key FK1kuhenhyqohkq65sx7buedmuo;
alter table invoicedetails drop foreign key FK89qafpuc6kcdwuw8m3nm2u041;
alter table invoiceitemdetails drop foreign key FK18yr30vhtu66yvcwe3m63mhna;
alter table invoiceitemdetails drop foreign key FKn50r0qluxi5annsor1dlevme1;
alter table invoiceitemtaxdetails drop foreign key FK4gp6voiauxp6ec8l02einqu9w;
alter table invoicenumberdetails drop foreign key FK2w91bkmxgs1qrdt9f2d1v0cal;
alter table productdetails drop foreign key FK5xheapvx9if9vkenm2cvoejlf;
alter table productdetails drop foreign key FKjqpm1hwgiymljd4l0ipfmy7pa;
alter table productdetails drop foreign key FK9nd71xd6dysthgjyr6lamu5l3;
alter table sac_accountingcode_group_map drop foreign key FKebmp2byi05lafvoxrvvs632jy;
alter table sac_group_headin_map drop foreign key FKfj65t0nyn1my07qjbhv889iv7;
alter table servicemaintainencedetails drop foreign key FK68cmou1xackfo6lreivjhkkla;
alter table servicerecords drop foreign key FKax3b33f0fc25qv5jsn74ypv3j;
alter table user_roles drop foreign key FK5o9x0dnwrui13n5vfedcnfwnp;
alter table users drop foreign key FKnktkqnxe4fxybebii7rn8nly3;
drop table if exists chapter_section_map;
drop table if exists consignee_details;
drop table if exists credit_note;
drop table if exists credit_note_items;
drop table if exists credit_note_tax_items;
drop table if exists customer_details;
drop table if exists expenses;
drop table if exists hibernate_sequence;
drop table if exists hibernate_sequences;
drop table if exists hsn_chapter_map;
drop table if exists hsnchapter_master;
drop table if exists hsnmaster;
drop table if exists inventorydetails;
drop table if exists inventoryrefilldetails;
drop table if exists invoicedetails;
drop table if exists invoiceitemdetails;
drop table if exists invoiceitemtaxdetails;
drop table if exists invoicenumberdetails;
drop table if exists productdetails;
drop table if exists sac_accountingcode_group_map;
drop table if exists sac_group_headin_map;
drop table if exists sac_group_master;
drop table if exists sac_heading_master;
drop table if exists sac_master;
drop table if exists section_master;
drop table if exists servicedetails;
drop table if exists servicemaintainencedetails;
drop table if exists servicerecords;
drop table if exists states;
drop table if exists taxrates;
drop table if exists user_roles;
drop table if exists users;
create table chapter_section_map (chapter_id varchar(255) not null, section_id varchar(255), primary key (chapter_id)) type=InnoDB;
create table consignee_details (CONSIGNEE_ID bigint not null, CONSIGNEE_ADRESS varchar(255), CONSIGNEE_CREATIONTIMESTAMP datetime, CONSIGNEE_EMAIL varchar(255), CONSIGNEE_GSTIN varchar(255), CONSIGNEE_MOBILE varchar(255), CONSIGNEE_MODIFICATIONTIMESTAMP datetime, CONSIGNEE_NAME varchar(255), CONSIGNEE_PHONE varchar(255), CONSIGNEE_STATE_CODE varchar(255), USERID bigint, primary key (CONSIGNEE_ID)) type=InnoDB;
create table credit_note (cn_creditnoteid varchar(255) not null, cn_consigneeid integer, cn_createdtimestamp datetime, cn_customerid integer, cn_date date, cn_modifiedtimestamp datetime, cn_parentinvoiceid decimal(19,2), cn_totalamount decimal(19,2), cn_totaltax decimal(19,2), cn_userid varchar(255), primary key (cn_creditnoteid)) type=InnoDB;
create table credit_note_items (cni_itemid varchar(255) not null, cni_discount decimal(19,2), cni_productid integer, cni_quantity integer, cni_rate decimal(19,2), cni_totalamount decimal(19,2), cni_totaltaxablevalue decimal(19,2), cni_unit varchar(255), cni_creditnoteid varchar(255), primary key (cni_itemid)) type=InnoDB;
create table credit_note_tax_items (cnt_taxid varchar(255) not null, cnt_taxamount decimal(19,2), cnt_taxrate decimal(19,2), cnt_taxtype varchar(255), cnt_creditnoteitemid varchar(255), primary key (cnt_taxid)) type=InnoDB;
create table customer_details (CD_CUSTOMER_ID integer not null, CD_CREATIONTIMESTAMP datetime, CD_CUSTOMER_ADDRESS varchar(255), CD_CUSTOMER_EMAIL varchar(255), CD_GSTIN varchar(255), CD_CUSTOMER_MOBILE varchar(255), CD_CUSTOMER_NAME varchar(255), CD_CUSTOMER_PHONE varchar(255), CD_MODIFICATIONTIMESTAMP datetime, CD_CUSTOMER_STATE_CODE varchar(255), CD_USERID bigint, primary key (CD_CUSTOMER_ID)) type=InnoDB;
create table expenses (expenseid bigint not null, creationtimestamp datetime, expenseamount decimal(19,2), expensecomment varchar(255), expensedate date, expensetype varchar(255), modificationtimestamp datetime, userid varchar(255), primary key (expenseid)) type=InnoDB;
create table hibernate_sequence (next_val bigint) type=InnoDB;
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
insert into hibernate_sequence values ( 1 );
create table hibernate_sequences (sequence_name varchar(255) not null, next_val bigint, primary key (sequence_name)) type=InnoDB;
create table hsn_chapter_map (hsncode varchar(255) not null, chapter_id varchar(255), primary key (hsncode)) type=InnoDB;
create table hsnchapter_master (hsnchapter_id varchar(255) not null, hsnchapter_desc varchar(255), primary key (hsnchapter_id)) type=InnoDB;
create table hsnmaster (hsncode varchar(255) not null, hsndesc varchar(255), primary key (hsncode)) type=InnoDB;
create table inventorydetails (id integer not null, ID_ProductQuantity integer not null, ID_ProductID bigint, primary key (id)) type=InnoDB;
create table inventoryrefilldetails (IRD_ID integer not null, IRD_ProductQuantity integer not null, IRD_RefillAmount decimal(19,2), IRD_RefillDate date, IRD_TaxAmount decimal(19,2), IRD_TotalPaidAmount decimal(19,2), TR_CREATION_TIMESTAMP datetime, TR_MODIFICATION_TIMESTAMP datetime, IRD_ProductID bigint, IRD_TaxId integer, primary key (IRD_ID)) type=InnoDB;
create table invoicedetails (id_invoiceid bigint not null, id_creationtimestamp datetime, id_grandtotal decimal(19,2), id_invoicebalanceamount decimal(19,2), id_invoicedate date, id_invoiceduedate date, id_invoicenumber varchar(255), id_invoicepaidamount decimal(19,2), id_invoicetotalamount decimal(19,2), id_modificationtimestamp datetime, id_taxamount decimal(19,2), id_consigneeid bigint, id_customerid integer, ID_USERID bigint, primary key (id_invoiceid)) type=InnoDB;
create table invoiceitemdetails (iid_itemid varchar(255) not null, iid_itemdiscount decimal(19,2), iid_itemprice decimal(19,2), iid_itemtotalamount decimal(19,2), iid_itemunit varchar(255), iid_productquantity integer, iid_taxableamount decimal(19,2), iid_invoiceid bigint, iid_productid bigint, primary key (iid_itemid)) type=InnoDB;
create table invoiceitemtaxdetails (itd_itemid varchar(255) not null, itd_taxtype varchar(255), itd_taxamount decimal(19,2), itd_taxrate decimal(19,2), itd_invoiceitemid varchar(255), primary key (itd_itemid)) type=InnoDB;
create table invoicenumberdetails (id varchar(255) not null, invoicedate date, sequenceno integer, userid bigint, primary key (id)) type=InnoDB;
create table productdetails (pd_productid bigint not null auto_increment, pd_agencysecuritydeposit decimal(19,2), pd_agencystartdate date, PD_CREATION_TIMESTAMP datetime, PD_MODIFICATION_TIMESTAMP datetime, pd_productcompany varchar(255), pd_productname varchar(255), pd_serviceorgood varchar(255), pd_taxrate float, pd_producttype varchar(255), pd_hsn varchar(255), pd_sac varchar(255), PD_USERID bigint, primary key (pd_productid)) type=InnoDB;
create table sac_accountingcode_group_map (sac varchar(255) not null, group_id varchar(255), primary key (sac)) type=InnoDB;
create table sac_group_headin_map (group_id varchar(255) not null, heading_id varchar(255), primary key (group_id)) type=InnoDB;
create table sac_group_master (group_id varchar(255) not null, group_desc varchar(255), primary key (group_id)) type=InnoDB;
create table sac_heading_master (heading_id varchar(255) not null, heading_desc varchar(255), primary key (heading_id)) type=InnoDB;
create table sac_master (sac_id varchar(255) not null, sac_desc varchar(255), primary key (sac_id)) type=InnoDB;
create table section_master (section_id varchar(255) not null, section_desc varchar(255), primary key (section_id)) type=InnoDB;
create table servicedetails (SD_ServiceId integer not null, SD_ServiceType varchar(255), SD_StartDate date, SD_CREATION_TIMESTAMP datetime, SD_MODIFICATION_TIMESTAMP datetime, primary key (SD_ServiceId)) type=InnoDB;
create table servicemaintainencedetails (SMD_Id integer not null, SMD_ServiceMaintainenceAmount decimal(19,2), SMD_ServiceMaintainenceDate date, SMD_ServiceMaintainenceType varchar(255), SMD_CREATION_TIMESTAMP datetime, SMD_MODIFICATION_TIMESTAMP datetime, SMD_ServiceId integer, primary key (SMD_Id)) type=InnoDB;
create table servicerecords (SR_Id integer not null, SR_Creation_timestamp datetime, SR_EndReading decimal(19,2), SR_Kilometers decimal(19,2), SR_NumberOfTrips integer not null, SR_ServiceDate date, SR_StartReading decimal(19,2), SR_modification_timestamp datetime, SR_ServiceId integer, primary key (SR_Id)) type=InnoDB;
create table states (statecode varchar(255) not null, stateinitial varchar(255), statename varchar(255), statetype varchar(255), primary key (statecode)) type=InnoDB;
create table taxrates (TR_TaxId integer not null, TR_TaxRate decimal(19,2), TR_TaxType varchar(255), TR_CREATION_TIMESTAMP datetime, TR_MODIFICATION_TIMESTAMP datetime, primary key (TR_TaxId)) type=InnoDB;
create table user_roles (role_name varchar(255) not null, userid varchar(255) not null, userRoles_userid bigint, primary key (role_name, userid)) type=InnoDB;
create table users (userid bigint not null, address varchar(255), businessname varchar(255), contactnumber varchar(255), firstname varchar(255), gstin varchar(255), lastname varchar(255), logopath varchar(255), middlename varchar(255), password varchar(255), username varchar(255), state varchar(255), primary key (userid)) type=InnoDB;
alter table chapter_section_map add constraint FK9my0mbna9ig6pr1wwqy4qqixc foreign key (section_id) references section_master (section_id);
alter table consignee_details add constraint FKi4mxaqyqp7wkpqo4p9ayn3h9r foreign key (CONSIGNEE_STATE_CODE) references states (statecode);
alter table consignee_details add constraint FKc1gdbm1lvuuyi61h576v8hfoc foreign key (USERID) references users (userid);
alter table credit_note_items add constraint FKq8gytm7mbgsb41fvwltp4ismb foreign key (cni_creditnoteid) references credit_note (cn_creditnoteid);
alter table credit_note_tax_items add constraint FKsr43ceofgh1uijiq8qnyyp7m6 foreign key (cnt_creditnoteitemid) references credit_note_items (cni_itemid);
alter table customer_details add constraint FK4x9ulrs0saogxanowr0t7kp3c foreign key (CD_CUSTOMER_STATE_CODE) references states (statecode);
alter table customer_details add constraint FK6wmpn60654md0tff94bgixt17 foreign key (CD_USERID) references users (userid);
alter table hsn_chapter_map add constraint FKjoau5whxtwlibhjgwd5bcingd foreign key (chapter_id) references hsnchapter_master (hsnchapter_id);
alter table inventorydetails add constraint FK2mgrkrap531bv5n24wrov6vod foreign key (ID_ProductID) references productdetails (pd_productid);
alter table inventoryrefilldetails add constraint FKcl85x6orcvcmnl6ie8a8crh3 foreign key (IRD_ProductID) references productdetails (pd_productid);
alter table inventoryrefilldetails add constraint FK2m6bm87mhglms578wu4nmwi02 foreign key (IRD_TaxId) references taxrates (TR_TaxId);
alter table invoicedetails add constraint FK5dasf6qdva5lkfu9i5cs55pur foreign key (id_consigneeid) references consignee_details (CONSIGNEE_ID);
alter table invoicedetails add constraint FK1kuhenhyqohkq65sx7buedmuo foreign key (id_customerid) references customer_details (CD_CUSTOMER_ID);
alter table invoicedetails add constraint FK89qafpuc6kcdwuw8m3nm2u041 foreign key (ID_USERID) references users (userid);
alter table invoiceitemdetails add constraint FK18yr30vhtu66yvcwe3m63mhna foreign key (iid_invoiceid) references invoicedetails (id_invoiceid);
alter table invoiceitemdetails add constraint FKn50r0qluxi5annsor1dlevme1 foreign key (iid_productid) references productdetails (pd_productid);
alter table invoiceitemtaxdetails add constraint FK4gp6voiauxp6ec8l02einqu9w foreign key (itd_invoiceitemid) references invoiceitemdetails (iid_itemid);
alter table invoicenumberdetails add constraint FK2w91bkmxgs1qrdt9f2d1v0cal foreign key (userid) references users (userid);
alter table productdetails add constraint FK5xheapvx9if9vkenm2cvoejlf foreign key (pd_hsn) references hsnmaster (hsncode);
alter table productdetails add constraint FKjqpm1hwgiymljd4l0ipfmy7pa foreign key (pd_sac) references sac_master (sac_id);
alter table productdetails add constraint FK9nd71xd6dysthgjyr6lamu5l3 foreign key (PD_USERID) references users (userid);
alter table sac_accountingcode_group_map add constraint FKebmp2byi05lafvoxrvvs632jy foreign key (group_id) references sac_group_master (group_id);
alter table sac_group_headin_map add constraint FKfj65t0nyn1my07qjbhv889iv7 foreign key (heading_id) references sac_heading_master (heading_id);
alter table servicemaintainencedetails add constraint FK68cmou1xackfo6lreivjhkkla foreign key (SMD_ServiceId) references servicedetails (SD_ServiceId);
alter table servicerecords add constraint FKax3b33f0fc25qv5jsn74ypv3j foreign key (SR_ServiceId) references servicedetails (SD_ServiceId);
alter table user_roles add constraint FK5o9x0dnwrui13n5vfedcnfwnp foreign key (userRoles_userid) references users (userid);
alter table users add constraint FKnktkqnxe4fxybebii7rn8nly3 foreign key (state) references states (statecode);