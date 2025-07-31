.class public Lcom/offsec/nethunter/SQL/USBArsenalSQL;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "USBArsenalSQL.java"


# static fields
.field private static final COLUMNS_USBNETWORK:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COLUMNS_USBSWITCH:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATABASE_NAME:Ljava/lang/String; = "USBArsenalFragment"

.field private static final TAG:Ljava/lang/String; = "USBArsenalSQLSQL"

.field private static final USBNETWORK_TABLE_NAME:Ljava/lang/String; = "USBNetwork"

.field private static final USBSWITCH_TABLE_NAME:Ljava/lang/String; = "USBSwitch"

.field private static instance:Lcom/offsec/nethunter/SQL/USBArsenalSQL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "USBArsenalFragment"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sget-object p1, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const-string v0, "target"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "functions"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "idVendor"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "idProduct"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "manufacturer"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "product"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "serialnumber"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const-string v0, "attack_mode"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "upstream_iface"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "usb_iface"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ip_address_for_target"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ip_gateway"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ip_subnetmask"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/offsec/nethunter/SQL/USBArsenalSQL;
    .locals 2

    const-class v0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->instance:Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    if-nez v1, :cond_0

    new-instance v1, Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->instance:Lcom/offsec/nethunter/SQL/USBArsenalSQL;

    :cond_0
    sget-object p0, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->instance:Lcom/offsec/nethunter/SQL/USBArsenalSQL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private ifTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "USBArsenalSQLSQL"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method private verifyDB(Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v2, "USBSwitch"

    invoke-direct {p0, p1, v2}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->ifTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_3

    const-string v2, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'USBSwitch\'"

    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v10, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v3, "USBSwitch"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    array-length v2, v3

    sget-object v4, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v4, v3, v2

    sget-object v5, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    :goto_2
    move v11, v2

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_5

    const-string v2, "USBNetwork"

    invoke-direct {p0, p1, v2}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->ifTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'USBNetwork\'"

    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v10, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v3, "USBNetwork"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    array-length v0, v2

    sget-object v3, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_6

    const/4 v0, 0x0

    :goto_4
    array-length v3, v2

    if-ge v0, v3, :cond_5

    aget-object v3, v2, v0

    sget-object v4, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v1, v11

    :cond_6
    :goto_5
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v1
.end method


# virtual methods
.method public backupData(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "/data/com.offsec.nethunter/databases/"

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    move-object v2, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUSBNetworkColumnData(I)Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;
    .locals 8

    new-instance v0, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;

    invoke-direct {v0}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;-><init>()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM USBNetwork WHERE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\';"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eq v4, v7, :cond_1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    if-eq v5, v7, :cond_2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    if-eq v6, v7, :cond_3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v2

    :goto_3
    if-eq v3, v7, :cond_4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->setupstream_iface(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->setusb_iface(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->setip_address_for_target(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->setip_gateway(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->setip_subnetmask(Ljava/lang/String;)V

    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public getUSBSwitchColumnData(Ljava/lang/String;Ljava/lang/String;)Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;
    .locals 7

    new-instance v0, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;

    invoke-direct {v0}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;-><init>()V

    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT * FROM USBSwitch WHERE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\';"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    if-eq v2, v6, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    if-eq v4, v6, :cond_2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, p2

    :goto_2
    if-eq v5, v6, :cond_3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, p2

    :goto_3
    if-eq v3, v6, :cond_4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-virtual {v0, v1}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->setidVendor(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->setidProduct(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->setmanufacturer(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->setproduct(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/offsec/nethunter/models/USBArsenalUSBSwitchModel;->setserialnumber(Ljava/lang/String;)V

    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19

    move-object/from16 v0, p1

    const/16 v1, 0x2d

    new-array v2, v1, [[Ljava/lang/String;

    const-string v3, "Windows"

    const-string v4, "reset"

    const-string v5, "0x1234"

    const-string v6, "0x5678"

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "Windows"

    const-string v6, "hid"

    const-string v7, "0x046d"

    const-string v8, "0xc316"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v6, "Windows"

    const-string v7, "hid,adb"

    const-string v8, "0x046d"

    const-string v9, "0xc317"

    const-string v10, ""

    const-string v11, ""

    const-string v12, ""

    filled-new-array/range {v6 .. v12}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v7, "Windows"

    const-string v8, "mass_storage"

    const-string v9, "0x9051"

    const-string v10, "0x168a"

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v8, "Windows"

    const-string v9, "mass_storage,adb"

    const-string v10, "0x9051"

    const-string v11, "0x168b"

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    filled-new-array/range {v8 .. v14}, [Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    const-string v9, "Windows"

    const-string v10, "rndis"

    const-string v11, "0x0525"

    const-string v12, "0xa4a2"

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    filled-new-array/range {v9 .. v15}, [Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x5

    aput-object v3, v2, v9

    const-string v10, "Windows"

    const-string v11, "rndis,adb"

    const-string v12, "0x0525"

    const-string v13, "0xa4a3"

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x6

    aput-object v3, v2, v10

    const-string v11, "Windows"

    const-string v12, "hid,mass_storage"

    const-string v13, "0x046d"

    const-string v14, "0xc318"

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x7

    aput-object v3, v2, v11

    const-string v12, "Windows"

    const-string v13, "hid,mass_storage,adb"

    const-string v14, "0x046d"

    const-string v15, "0xc319"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x8

    aput-object v3, v2, v11

    const-string v12, "Windows"

    const-string v13, "rndis,hid"

    const-string v14, "0x0525"

    const-string v15, "0xa4a6"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x9

    aput-object v3, v2, v11

    const-string v12, "Windows"

    const-string v13, "rndis,hid,adb"

    const-string v14, "0x0525"

    const-string v15, "0xa4a7"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0xa

    aput-object v3, v2, v11

    const-string v12, "Windows"

    const-string v13, "rndis,mass_storage"

    const-string v14, "0x0525"

    const-string v15, "0xa4a4"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0xb

    aput-object v3, v2, v11

    const-string v12, "Windows"

    const-string v13, "rndis,mass_storage,adb"

    const-string v14, "0x0525"

    const-string v15, "0xa4a5"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0xc

    aput-object v3, v2, v11

    const-string v12, "Windows"

    const-string v13, "rndis,hid,mass_storage"

    const-string v14, "0x0525"

    const-string v15, "0xa4a8"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0xd

    aput-object v3, v2, v11

    const-string v12, "Windows"

    const-string v13, "rndis,hid,mass_storage,adb"

    const-string v14, "0x0525"

    const-string v15, "0xa4a9"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0xe

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "reset"

    const-string v14, "0x1234"

    const-string v15, "0x5678"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0xf

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "hid"

    const-string v14, "0x046d"

    const-string v15, "0xc316"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x10

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "hid,adb"

    const-string v14, "0x046d"

    const-string v15, "0xc317"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x11

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "mass_storage"

    const-string v14, "0x9051"

    const-string v15, "0x168a"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x12

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "mass_storage,adb"

    const-string v14, "0x9051"

    const-string v15, "0x168b"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x13

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "rndis"

    const-string v14, "0x0525"

    const-string v15, "0xa4a2"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x14

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "rndis,adb"

    const-string v14, "0x0525"

    const-string v15, "0xa4a3"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x15

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "hid,mass_storage"

    const-string v14, "0x046d"

    const-string v15, "0xc318"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x16

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "hid,mass_storage,adb"

    const-string v14, "0x046d"

    const-string v15, "0xc319"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x17

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "rndis,hid"

    const-string v14, "0x0525"

    const-string v15, "0xa4a6"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x18

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "rndis,hid,adb"

    const-string v14, "0x0525"

    const-string v15, "0xa4a7"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x19

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "rndis,mass_storage"

    const-string v14, "0x0525"

    const-string v15, "0xa4a4"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x1a

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "rndis,mass_storage,adb"

    const-string v14, "0x0525"

    const-string v15, "0xa4a5"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x1b

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "rndis,hid,mass_storage"

    const-string v14, "0x0525"

    const-string v15, "0xa4a8"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x1c

    aput-object v3, v2, v11

    const-string v12, "Linux"

    const-string v13, "rndis,hid,mass_storage,adb"

    const-string v14, "0x0525"

    const-string v15, "0xa4a9"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x1d

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "reset"

    const-string v14, "0x1234"

    const-string v15, "0x5678"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x1e

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "hid"

    const-string v14, "0x05ac"

    const-string v15, "0x0201"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x1f

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "hid,adb"

    const-string v14, "0x05ac"

    const-string v15, "0x0201"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x20

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "mass_storage"

    const-string v14, "0x0930"

    const-string v15, "0x6545"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x21

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "mass_storage,adb"

    const-string v14, "0x0930"

    const-string v15, "0x6545"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x22

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "acm,ecm"

    const-string v14, "0x1d6b"

    const-string v15, "0x0105"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x23

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "acm,ecm,adb"

    const-string v14, "0x1d6b"

    const-string v15, "0x0105"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x24

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "hid,mass_storage"

    const-string v14, "0x05ac"

    const-string v15, "0x0201"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x25

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "hid,mass_storage,adb"

    const-string v14, "0x05ac"

    const-string v15, "0x0201"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x26

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "acm,ecm,hid"

    const-string v14, "0x05ac"

    const-string v15, "0x0201"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x27

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "acm,ecm,hid,adb"

    const-string v14, "0x05ac"

    const-string v15, "0x0201"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x28

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "acm,ecm,mass_storage"

    const-string v14, "0x1d6b"

    const-string v15, "0x0105"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x29

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "acm,ecm,mass_storage,adb"

    const-string v14, "0x1d6b"

    const-string v15, "0x0105"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x2a

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "acm,ecm,hid,mass_storage"

    const-string v14, "0x05ac"

    const-string v15, "0x0201"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x2b

    aput-object v3, v2, v11

    const-string v12, "Mac OS"

    const-string v13, "acm,ecm,hid,mass_storage,adb"

    const-string v14, "0x05ac"

    const-string v15, "0x0201"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x2c

    aput-object v3, v2, v11

    new-array v3, v5, [[Ljava/lang/String;

    const-string v11, "0"

    const-string v12, "wlan0"

    const-string v13, "rndis0"

    const-string v14, "192.168.192.100"

    const-string v15, "192.168.192.1"

    const-string v16, "255.255.255.0"

    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v4

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "CREATE TABLE USBSwitch ("

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " TEXT, "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " TEXT)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "CREATE TABLE USBNetwork ("

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " INTEGER, "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v1, :cond_0

    aget-object v14, v2, v12

    sget-object v15, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/String;

    aget-object v13, v14, v4

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v13, v14, v5

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v13, v14, v6

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v13, v14, v7

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v13, v14, v8

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v13, v14, v9

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v13, v14, v10

    invoke-virtual {v11, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "USBSwitch"

    const/4 v13, 0x0

    invoke-virtual {v0, v1, v13, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    add-int/lit8 v12, v12, 0x1

    const/16 v1, 0x2d

    goto :goto_0

    :cond_0
    aget-object v1, v3, v4

    sget-object v2, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aget-object v4, v1, v4

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aget-object v4, v1, v5

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aget-object v4, v1, v6

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aget-object v4, v1, v7

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aget-object v4, v1, v8

    invoke-virtual {v11, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aget-object v1, v1, v9

    invoke-virtual {v11, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "USBNetwork"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS USBSwitch"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS USBNetwork"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public resetData()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DROP TABLE IF EXISTS USBSwitch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS USBNetwork"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public restoreData(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "/data/com.offsec.nethunter/databases/"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "db file not found."

    return-object p1

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-string p1, "db cannot be restored.\nReason: the db version of your backup db is newer than the current db version."

    return-object p1

    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->verifyDB(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "Invalid DB format."

    return-object p1

    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v5, 0x0

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    move-object v3, v0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "USBArsenalSQLSQL"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setUSBNetworkColumnData(ILcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;)Z
    .locals 8

    const-string v0, "\',"

    const-string v1, " = \'"

    const-string v2, "UPDATE USBNetwork SET "

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBNETWORK:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getupstream_iface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getusb_iface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getip_address_for_target()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getip_gateway()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/offsec/nethunter/models/USBArsenalUSBNetworkModel;->getip_subnetmask()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' WHERE "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\';"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method public setUSBSwitchColumnData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, " = \'"

    const-string v1, "UPDATE USBSwitch SET "

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/offsec/nethunter/SQL/USBArsenalSQL;->COLUMNS_USBSWITCH:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' WHERE "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' AND "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\';"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v2
.end method
