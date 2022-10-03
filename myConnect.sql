/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2015                    */
/* Created on:     29/09/2022 3:07:52 PM                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ADDRESS') and o.name = 'FK_ADDRESS_HAVE3_USER')
alter table ADDRESS
   drop constraint FK_ADDRESS_HAVE3_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BILL') and o.name = 'FK_BILL_TO3_ORDER')
alter table BILL
   drop constraint FK_BILL_TO3_ORDER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COLOR_DETAILS') and o.name = 'FK_COLOR_DE_HAVE10_PRODUCT')
alter table COLOR_DETAILS
   drop constraint FK_COLOR_DE_HAVE10_PRODUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COLOR_DETAILS') and o.name = 'FK_COLOR_DE_OF6_COLOR')
alter table COLOR_DETAILS
   drop constraint FK_COLOR_DE_OF6_COLOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COMMENT') and o.name = 'FK_COMMENT_HAVE2_USER')
alter table COMMENT
   drop constraint FK_COMMENT_HAVE2_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('COMMENT') and o.name = 'FK_COMMENT_OF_PRODUCT')
alter table COMMENT
   drop constraint FK_COMMENT_OF_PRODUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('NOTIFICATION') and o.name = 'FK_NOTIFICA_FROM_SHOP')
alter table NOTIFICATION
   drop constraint FK_NOTIFICA_FROM_SHOP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"ORDER"') and o.name = 'FK_ORDER_AT_VOUCHERS')
alter table "ORDER"
   drop constraint FK_ORDER_AT_VOUCHERS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"ORDER"') and o.name = 'FK_ORDER_TO1_BILL')
alter table "ORDER"
   drop constraint FK_ORDER_TO1_BILL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ORDER_DETAILS') and o.name = 'FK_ORDER_DE_HAVE1_ORDER')
alter table ORDER_DETAILS
   drop constraint FK_ORDER_DE_HAVE1_ORDER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ORDER_DETAILS') and o.name = 'FK_ORDER_DE_HAVE8_PRODUCT')
alter table ORDER_DETAILS
   drop constraint FK_ORDER_DE_HAVE8_PRODUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PAYMENT') and o.name = 'FK_PAYMENT_PAY_SHOP')
alter table PAYMENT
   drop constraint FK_PAYMENT_PAY_SHOP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRICE_DETAILS') and o.name = 'FK_PRICE_DE_HAVE7_PRODUCT')
alter table PRICE_DETAILS
   drop constraint FK_PRICE_DE_HAVE7_PRODUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRICE_DETAILS') and o.name = 'FK_PRICE_DE_OF3_DATE')
alter table PRICE_DETAILS
   drop constraint FK_PRICE_DE_OF3_DATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCT') and o.name = 'FK_PRODUCT_HAVE9_CLASS_PR')
alter table PRODUCT
   drop constraint FK_PRODUCT_HAVE9_CLASS_PR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PRODUCT') and o.name = 'FK_PRODUCT_PRODUCE_PRODUCER')
alter table PRODUCT
   drop constraint FK_PRODUCT_PRODUCE_PRODUCER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REPLY') and o.name = 'FK_REPLY_HAVE_SHOP')
alter table REPLY
   drop constraint FK_REPLY_HAVE_SHOP
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('REPLY') and o.name = 'FK_REPLY_OF2_COMMENT')
alter table REPLY
   drop constraint FK_REPLY_OF2_COMMENT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SIZE_DETAILS') and o.name = 'FK_SIZE_DET_HAVE11_PRODUCT')
alter table SIZE_DETAILS
   drop constraint FK_SIZE_DET_HAVE11_PRODUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SIZE_DETAILS') and o.name = 'FK_SIZE_DET_HAVE12_SIZE')
alter table SIZE_DETAILS
   drop constraint FK_SIZE_DET_HAVE12_SIZE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"TO"') and o.name = 'FK_TO_TO_NOTIFICA')
alter table "TO"
   drop constraint FK_TO_TO_NOTIFICA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"TO"') and o.name = 'FK_TO_TO2_USER')
alter table "TO"
   drop constraint FK_TO_TO2_USER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ADDRESS')
            and   name  = 'HAVE3_FK'
            and   indid > 0
            and   indid < 255)
   drop index ADDRESS.HAVE3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ADDRESS')
            and   type = 'U')
   drop table ADDRESS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BILL')
            and   name  = 'TO3_FK'
            and   indid > 0
            and   indid < 255)
   drop index BILL.TO3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BILL')
            and   type = 'U')
   drop table BILL
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLASS_PRODUCT')
            and   type = 'U')
   drop table CLASS_PRODUCT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COLOR')
            and   type = 'U')
   drop table COLOR
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COLOR_DETAILS')
            and   name  = 'HAVE10_FK'
            and   indid > 0
            and   indid < 255)
   drop index COLOR_DETAILS.HAVE10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COLOR_DETAILS')
            and   name  = 'OF6_FK'
            and   indid > 0
            and   indid < 255)
   drop index COLOR_DETAILS.OF6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COLOR_DETAILS')
            and   type = 'U')
   drop table COLOR_DETAILS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COMMENT')
            and   name  = 'OF_FK'
            and   indid > 0
            and   indid < 255)
   drop index COMMENT.OF_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('COMMENT')
            and   name  = 'HAVE2_FK'
            and   indid > 0
            and   indid < 255)
   drop index COMMENT.HAVE2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('COMMENT')
            and   type = 'U')
   drop table COMMENT
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DATE')
            and   type = 'U')
   drop table DATE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('NOTIFICATION')
            and   name  = 'FROM_FK'
            and   indid > 0
            and   indid < 255)
   drop index NOTIFICATION.FROM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NOTIFICATION')
            and   type = 'U')
   drop table NOTIFICATION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"ORDER"')
            and   name  = 'TO1_FK'
            and   indid > 0
            and   indid < 255)
   drop index "ORDER".TO1_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"ORDER"')
            and   name  = 'AT_FK'
            and   indid > 0
            and   indid < 255)
   drop index "ORDER".AT_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"ORDER"')
            and   type = 'U')
   drop table "ORDER"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ORDER_DETAILS')
            and   name  = 'HAVE8_FK'
            and   indid > 0
            and   indid < 255)
   drop index ORDER_DETAILS.HAVE8_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ORDER_DETAILS')
            and   name  = 'HAVE1_FK'
            and   indid > 0
            and   indid < 255)
   drop index ORDER_DETAILS.HAVE1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ORDER_DETAILS')
            and   type = 'U')
   drop table ORDER_DETAILS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PAYMENT')
            and   name  = 'PAY_FK'
            and   indid > 0
            and   indid < 255)
   drop index PAYMENT.PAY_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PAYMENT')
            and   type = 'U')
   drop table PAYMENT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRICE_DETAILS')
            and   name  = 'OF3_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRICE_DETAILS.OF3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRICE_DETAILS')
            and   name  = 'HAVE7_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRICE_DETAILS.HAVE7_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRICE_DETAILS')
            and   type = 'U')
   drop table PRICE_DETAILS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRODUCER')
            and   type = 'U')
   drop table PRODUCER
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCT')
            and   name  = 'PRODUCE_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCT.PRODUCE_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PRODUCT')
            and   name  = 'HAVE9_FK'
            and   indid > 0
            and   indid < 255)
   drop index PRODUCT.HAVE9_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PRODUCT')
            and   type = 'U')
   drop table PRODUCT
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REPLY')
            and   name  = 'OF2_FK'
            and   indid > 0
            and   indid < 255)
   drop index REPLY.OF2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('REPLY')
            and   name  = 'HAVE_FK'
            and   indid > 0
            and   indid < 255)
   drop index REPLY.HAVE_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('REPLY')
            and   type = 'U')
   drop table REPLY
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SHOP')
            and   type = 'U')
   drop table SHOP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SIZE')
            and   type = 'U')
   drop table SIZE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SIZE_DETAILS')
            and   name  = 'HAVE12_FK'
            and   indid > 0
            and   indid < 255)
   drop index SIZE_DETAILS.HAVE12_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SIZE_DETAILS')
            and   name  = 'HAVE11_FK'
            and   indid > 0
            and   indid < 255)
   drop index SIZE_DETAILS.HAVE11_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SIZE_DETAILS')
            and   type = 'U')
   drop table SIZE_DETAILS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"TO"')
            and   name  = 'TO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index "TO".TO2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('"TO"')
            and   name  = 'TO_FK'
            and   indid > 0
            and   indid < 255)
   drop index "TO".TO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"TO"')
            and   type = 'U')
   drop table "TO"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"USER"')
            and   type = 'U')
   drop table "USER"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VOUCHERS')
            and   type = 'U')
   drop table VOUCHERS
go

/*==============================================================*/
/* Table: ADDRESS                                               */
/*==============================================================*/
create table ADDRESS (
   IDADDRESS            varchar(12)          not null,
   USER_IDUSER          varchar(12)          not null,
   ADDRESS              varchar(256)         null,
   constraint PK_ADDRESS primary key (IDADDRESS)
)
go

/*==============================================================*/
/* Index: HAVE3_FK                                              */
/*==============================================================*/




create nonclustered index HAVE3_FK on ADDRESS (USER_IDUSER ASC)
go

/*==============================================================*/
/* Table: BILL                                                  */
/*==============================================================*/
create table BILL (
   IDBILL               varchar(12)          not null,
   ORDER_IDORDER        varchar(12)          not null,
   STATUS_BOOK          varchar(12)          null,
   PAY_AT               datetime             null,
   PHONE_NUMBER         varchar(11)          null,
   constraint PK_BILL primary key (IDBILL)
)
go

/*==============================================================*/
/* Index: TO3_FK                                                */
/*==============================================================*/




create nonclustered index TO3_FK on BILL (ORDER_IDORDER ASC)
go

/*==============================================================*/
/* Table: CLASS_PRODUCT                                         */
/*==============================================================*/
create table CLASS_PRODUCT (
   IDCLASS              varchar(12)          not null,
   CLASS_NAME           varchar(256)         null,
   constraint PK_CLASS_PRODUCT primary key (IDCLASS)
)
go

/*==============================================================*/
/* Table: COLOR                                                 */
/*==============================================================*/
create table COLOR (
   IDCOLOR              varchar(12)          not null,
   NAME_COLOR           varchar(256)         null,
   constraint PK_COLOR primary key (IDCOLOR)
)
go

/*==============================================================*/
/* Table: COLOR_DETAILS                                         */
/*==============================================================*/
create table COLOR_DETAILS (
   COLOR_IDCOLOR        varchar(12)          not null,
   PRODUCT_IDPRODUCT    varchar(12)          not null,
   QUANLITY_COLOR       int                  null,
   constraint PK_COLOR_DETAILS primary key (COLOR_IDCOLOR, PRODUCT_IDPRODUCT)
)
go

/*==============================================================*/
/* Index: OF6_FK                                                */
/*==============================================================*/




create nonclustered index OF6_FK on COLOR_DETAILS (COLOR_IDCOLOR ASC)
go

/*==============================================================*/
/* Index: HAVE10_FK                                             */
/*==============================================================*/




create nonclustered index HAVE10_FK on COLOR_DETAILS (PRODUCT_IDPRODUCT ASC)
go

/*==============================================================*/
/* Table: COMMENT                                               */
/*==============================================================*/
create table COMMENT (
   IDCMT                varchar(12)          not null,
   USER_IDUSER          varchar(12)          not null,
   PRODUCT_IDPRODUCT    varchar(12)          not null,
   COMMENT              varchar(500)         null,
   CLASS_CMT            bit                  null,
   constraint PK_COMMENT primary key (IDCMT)
)
go

/*==============================================================*/
/* Index: HAVE2_FK                                              */
/*==============================================================*/




create nonclustered index HAVE2_FK on COMMENT (USER_IDUSER ASC)
go

/*==============================================================*/
/* Index: OF_FK                                                 */
/*==============================================================*/




create nonclustered index OF_FK on COMMENT (PRODUCT_IDPRODUCT ASC)
go

/*==============================================================*/
/* Table: DATE                                                  */
/*==============================================================*/
create table DATE (
   DATE                 datetime             not null,
   constraint PK_DATE primary key (DATE)
)
go

/*==============================================================*/
/* Table: NOTIFICATION                                          */
/*==============================================================*/
create table NOTIFICATION (
   IDNOIFICATION        varchar(12)          not null,
   SHOP_IDUSER2         varchar(12)          not null,
   "FROM"               varchar(12)          null,
   "TO"                 varchar(12)          null,
   SEEN                 bit                  null,
   CONTENT_NOFI         varchar(500)         null,
   NOFI_AT              datetime             null,
   constraint PK_NOTIFICATION primary key (IDNOIFICATION)
)
go

/*==============================================================*/
/* Index: FROM_FK                                               */
/*==============================================================*/




create nonclustered index FROM_FK on NOTIFICATION (SHOP_IDUSER2 ASC)
go

/*==============================================================*/
/* Table: "ORDER"                                               */
/*==============================================================*/
create table "ORDER" (
   IDORDER              varchar(12)          not null,
   VOUCHERS_IDVOUCHER   varchar(12)          null,
   BILL_IDBILL          varchar(12)          null,
   STATUS_BOOK          varchar(12)          null,
   NOTE                 varchar(256)         null,
   ORDER_AT             datetime             null,
   ADDRESS              varchar(256)         null,
   LOCATION             varchar(100)         null,
   IN_PLACE             bit                  not null,
   constraint PK_ORDER primary key (IDORDER)
)
go

/*==============================================================*/
/* Index: AT_FK                                                 */
/*==============================================================*/




create nonclustered index AT_FK on "ORDER" (VOUCHERS_IDVOUCHER ASC)
go

/*==============================================================*/
/* Index: TO1_FK                                                */
/*==============================================================*/




create nonclustered index TO1_FK on "ORDER" (BILL_IDBILL ASC)
go

/*==============================================================*/
/* Table: ORDER_DETAILS                                         */
/*==============================================================*/
create table ORDER_DETAILS (
   ORDER_IDORDER        varchar(12)          not null,
   PRODUCT_IDPRODUCT    varchar(12)          not null,
   NOTE                 varchar(256)         null,
   QUANTILY_ORDER       int                  null,
   constraint PK_ORDER_DETAILS primary key (ORDER_IDORDER, PRODUCT_IDPRODUCT)
)
go

/*==============================================================*/
/* Index: HAVE1_FK                                              */
/*==============================================================*/




create nonclustered index HAVE1_FK on ORDER_DETAILS (ORDER_IDORDER ASC)
go

/*==============================================================*/
/* Index: HAVE8_FK                                              */
/*==============================================================*/




create nonclustered index HAVE8_FK on ORDER_DETAILS (PRODUCT_IDPRODUCT ASC)
go

/*==============================================================*/
/* Table: PAYMENT                                               */
/*==============================================================*/
create table PAYMENT (
   IDPAYMENT            varchar(12)          not null,
   SHOP_IDUSER2         varchar(12)          not null,
   PRICE_PAY            bigint               null,
   CONTENT_PAY          varchar(250)         null,
   PAY_AT               datetime             null,
   constraint PK_PAYMENT primary key (IDPAYMENT)
)
go

/*==============================================================*/
/* Index: PAY_FK                                                */
/*==============================================================*/




create nonclustered index PAY_FK on PAYMENT (SHOP_IDUSER2 ASC)
go

/*==============================================================*/
/* Table: PRICE_DETAILS                                         */
/*==============================================================*/
create table PRICE_DETAILS (
   PRODUCT_IDPRODUCT    varchar(12)          not null,
   DATE_DATE            datetime             not null,
   PRICE_IMPORT         bigint               null,
   PRICE_EXPORT         bigint               null,
   constraint PK_PRICE_DETAILS primary key (PRODUCT_IDPRODUCT, DATE_DATE)
)
go

/*==============================================================*/
/* Index: HAVE7_FK                                              */
/*==============================================================*/




create nonclustered index HAVE7_FK on PRICE_DETAILS (PRODUCT_IDPRODUCT ASC)
go

/*==============================================================*/
/* Index: OF3_FK                                                */
/*==============================================================*/




create nonclustered index OF3_FK on PRICE_DETAILS (DATE_DATE ASC)
go

/*==============================================================*/
/* Table: PRODUCER                                              */
/*==============================================================*/
create table PRODUCER (
   IDPRODUCER           varchar(12)          not null,
   NAME_PRODUCER        varchar(256)         null,
   constraint PK_PRODUCER primary key (IDPRODUCER)
)
go

/*==============================================================*/
/* Table: PRODUCT                                               */
/*==============================================================*/
create table PRODUCT (
   IDPRODUCT            varchar(12)          not null,
   PRODUCER_IDPRODUCER  varchar(12)          not null,
   CLASS_PRODUCT_IDCLASS varchar(12)          not null,
   NAME_PRODUCT         varchar(60)          null,
   "DESC"               varchar(256)         null,
   ELEMENT              varchar(256)         null,
   HIDE                 bit                  null,
   QUANTILY             int                  null,
   IMG_PATH             varchar(256)         null,
   constraint PK_PRODUCT primary key (IDPRODUCT)
)
go

/*==============================================================*/
/* Index: HAVE9_FK                                              */
/*==============================================================*/




create nonclustered index HAVE9_FK on PRODUCT (CLASS_PRODUCT_IDCLASS ASC)
go

/*==============================================================*/
/* Index: PRODUCE_FK                                            */
/*==============================================================*/




create nonclustered index PRODUCE_FK on PRODUCT (PRODUCER_IDPRODUCER ASC)
go

/*==============================================================*/
/* Table: REPLY                                                 */
/*==============================================================*/
create table REPLY (
   SHOP_IDUSER2         varchar(12)          not null,
   COMMENT_IDCMT        varchar(12)          not null,
   CONTENT_REPLY        varchar(120)         null,
   constraint PK_REPLY primary key (SHOP_IDUSER2, COMMENT_IDCMT)
)
go

/*==============================================================*/
/* Index: HAVE_FK                                               */
/*==============================================================*/




create nonclustered index HAVE_FK on REPLY (SHOP_IDUSER2 ASC)
go

/*==============================================================*/
/* Index: OF2_FK                                                */
/*==============================================================*/




create nonclustered index OF2_FK on REPLY (COMMENT_IDCMT ASC)
go

/*==============================================================*/
/* Table: SHOP                                                  */
/*==============================================================*/
create table SHOP (
   IDUSER2              varchar(12)          not null,
   USERNAME             varchar(60)          not null,
   PASSWORD             varchar(256)         not null,
   FULLNAME             varchar(60)          null,
   PHONE_NUMBER         varchar(11)          not null,
   EMAIL                varchar(256)         null,
   BIRTHDAY             datetime             null,
   CLASS_ORDER          bit                  not null,
   REGISTER_AT          datetime             null,
   GROUP_PERMISION      varchar(100)         null,
   constraint PK_SHOP primary key (IDUSER2)
)
go

/*==============================================================*/
/* Table: SIZE                                                  */
/*==============================================================*/
create table SIZE (
   IDSIZE               varchar(12)          not null,
   SIZE                 varchar(24)          null,
   constraint PK_SIZE primary key (IDSIZE)
)
go

/*==============================================================*/
/* Table: SIZE_DETAILS                                          */
/*==============================================================*/
create table SIZE_DETAILS (
   PRODUCT_IDPRODUCT    varchar(12)          not null,
   SIZE_IDSIZE          varchar(12)          not null,
   QUANLITY_SIZE        int                  null,
   constraint PK_SIZE_DETAILS primary key (PRODUCT_IDPRODUCT, SIZE_IDSIZE)
)
go

/*==============================================================*/
/* Index: HAVE11_FK                                             */
/*==============================================================*/




create nonclustered index HAVE11_FK on SIZE_DETAILS (PRODUCT_IDPRODUCT ASC)
go

/*==============================================================*/
/* Index: HAVE12_FK                                             */
/*==============================================================*/




create nonclustered index HAVE12_FK on SIZE_DETAILS (SIZE_IDSIZE ASC)
go

/*==============================================================*/
/* Table: "TO"                                                  */
/*==============================================================*/
create table "TO" (
   NOTIFICATION_IDNOIFICATION varchar(12)          not null,
   USER_IDUSER          varchar(12)          not null,
   constraint PK_TO primary key (NOTIFICATION_IDNOIFICATION, USER_IDUSER)
)
go

/*==============================================================*/
/* Index: TO_FK                                                 */
/*==============================================================*/




create nonclustered index TO_FK on "TO" (NOTIFICATION_IDNOIFICATION ASC)
go

/*==============================================================*/
/* Index: TO2_FK                                                */
/*==============================================================*/




create nonclustered index TO2_FK on "TO" (USER_IDUSER ASC)
go

/*==============================================================*/
/* Table: "USER"                                                */
/*==============================================================*/
create table "USER" (
   IDUSER               varchar(12)          not null,
   USERNAME             varchar(60)          not null,
   PASSWORD             varchar(256)         not null,
   FULLNAME             varchar(60)          null,
   PHONE_NUMBER         varchar(11)          not null,
   EMAIL                varchar(256)         null,
   BIRTHDAY             datetime             null,
   CLASS_ORDER          bit                  not null,
   BLOCK                bit                  not null,
   REGISTER_AT          datetime             null,
   constraint PK_USER primary key (IDUSER)
)
go

/*==============================================================*/
/* Table: VOUCHERS                                              */
/*==============================================================*/
create table VOUCHERS (
   IDVOUCHER            varchar(12)          not null,
   NAMEVC               varchar(120)         null,
   MAXPRICE             bigint               null,
   CENT                 bigint               null,
   EXPIRY               datetime             null,
   constraint PK_VOUCHERS primary key (IDVOUCHER)
)
go

alter table ADDRESS
   add constraint FK_ADDRESS_HAVE3_USER foreign key (USER_IDUSER)
      references "USER" (IDUSER)
go

alter table BILL
   add constraint FK_BILL_TO3_ORDER foreign key (ORDER_IDORDER)
      references "ORDER" (IDORDER)
go

alter table COLOR_DETAILS
   add constraint FK_COLOR_DE_HAVE10_PRODUCT foreign key (PRODUCT_IDPRODUCT)
      references PRODUCT (IDPRODUCT)
go

alter table COLOR_DETAILS
   add constraint FK_COLOR_DE_OF6_COLOR foreign key (COLOR_IDCOLOR)
      references COLOR (IDCOLOR)
go

alter table COMMENT
   add constraint FK_COMMENT_HAVE2_USER foreign key (USER_IDUSER)
      references "USER" (IDUSER)
go

alter table COMMENT
   add constraint FK_COMMENT_OF_PRODUCT foreign key (PRODUCT_IDPRODUCT)
      references PRODUCT (IDPRODUCT)
go

alter table NOTIFICATION
   add constraint FK_NOTIFICA_FROM_SHOP foreign key (SHOP_IDUSER2)
      references SHOP (IDUSER2)
go

alter table "ORDER"
   add constraint FK_ORDER_AT_VOUCHERS foreign key (VOUCHERS_IDVOUCHER)
      references VOUCHERS (IDVOUCHER)
go

alter table "ORDER"
   add constraint FK_ORDER_TO1_BILL foreign key (BILL_IDBILL)
      references BILL (IDBILL)
go

alter table ORDER_DETAILS
   add constraint FK_ORDER_DE_HAVE1_ORDER foreign key (ORDER_IDORDER)
      references "ORDER" (IDORDER)
go

alter table ORDER_DETAILS
   add constraint FK_ORDER_DE_HAVE8_PRODUCT foreign key (PRODUCT_IDPRODUCT)
      references PRODUCT (IDPRODUCT)
go

alter table PAYMENT
   add constraint FK_PAYMENT_PAY_SHOP foreign key (SHOP_IDUSER2)
      references SHOP (IDUSER2)
go

alter table PRICE_DETAILS
   add constraint FK_PRICE_DE_HAVE7_PRODUCT foreign key (PRODUCT_IDPRODUCT)
      references PRODUCT (IDPRODUCT)
go

alter table PRICE_DETAILS
   add constraint FK_PRICE_DE_OF3_DATE foreign key (DATE_DATE)
      references DATE (DATE)
go

alter table PRODUCT
   add constraint FK_PRODUCT_HAVE9_CLASS_PR foreign key (CLASS_PRODUCT_IDCLASS)
      references CLASS_PRODUCT (IDCLASS)
go

alter table PRODUCT
   add constraint FK_PRODUCT_PRODUCE_PRODUCER foreign key (PRODUCER_IDPRODUCER)
      references PRODUCER (IDPRODUCER)
go

alter table REPLY
   add constraint FK_REPLY_HAVE_SHOP foreign key (SHOP_IDUSER2)
      references SHOP (IDUSER2)
go

alter table REPLY
   add constraint FK_REPLY_OF2_COMMENT foreign key (COMMENT_IDCMT)
      references COMMENT (IDCMT)
go

alter table SIZE_DETAILS
   add constraint FK_SIZE_DET_HAVE11_PRODUCT foreign key (PRODUCT_IDPRODUCT)
      references PRODUCT (IDPRODUCT)
go

alter table SIZE_DETAILS
   add constraint FK_SIZE_DET_HAVE12_SIZE foreign key (SIZE_IDSIZE)
      references SIZE (IDSIZE)
go

alter table "TO"
   add constraint FK_TO_TO_NOTIFICA foreign key (NOTIFICATION_IDNOIFICATION)
      references NOTIFICATION (IDNOIFICATION)
go

alter table "TO"
   add constraint FK_TO_TO2_USER foreign key (USER_IDUSER)
      references "USER" (IDUSER)
go
