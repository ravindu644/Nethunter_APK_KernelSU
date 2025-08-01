.class public Lcom/offsec/nhterm/framework/NeoTermDatabase;
.super Ljava/lang/Object;
.source "NeoTermDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/offsec/nhterm/framework/NeoTermDatabase$SQLiteDataBaseHelper;
    }
.end annotation


# static fields
.field private static final DAO_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/offsec/nhterm/framework/NeoTermDatabase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->DAO_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    invoke-virtual {p1}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->getSaveDir()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->createDataBaseFileOnSDCard(Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/offsec/nhterm/framework/NeoTermDatabase$SQLiteDataBaseHelper;

    sget-object v1, Lcom/offsec/nhterm/App;->Companion:Lcom/offsec/nhterm/App$Companion;

    invoke-virtual {v1}, Lcom/offsec/nhterm/App$Companion;->get()Lcom/offsec/nhterm/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/offsec/nhterm/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/offsec/nhterm/framework/NeoTermDatabase$SQLiteDataBaseHelper;-><init>(Lcom/offsec/nhterm/framework/NeoTermDatabase;Landroid/content/Context;Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;)V

    invoke-virtual {v0}, Lcom/offsec/nhterm/framework/NeoTermDatabase$SQLiteDataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    return-void
.end method

.method private applyConfig(Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    iget-boolean v1, p1, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->debugMode:Z

    iput-boolean v1, v0, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->debugMode:Z

    iget-object v0, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    invoke-virtual {p1}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->getOnDatabaseUpgradedListener()Lcom/offsec/nhterm/framework/database/OnDatabaseUpgradedListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->setOnDatabaseUpgradedListener(Lcom/offsec/nhterm/framework/database/OnDatabaseUpgradedListener;)V

    return-void
.end method

.method private createDataBaseFileOnSDCard(Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object p2

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "\u65e0\u6cd5\u5728 "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u521b\u5efaDB\u6587\u4ef6."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    return-object p1
.end method

.method private createTableIfNeed(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/offsec/nhterm/framework/database/TableHelper;->from(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/bean/TableInfo;

    move-result-object p1

    iget-boolean v0, p1, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->isCreate:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->isTableExist(Lcom/offsec/nhterm/framework/database/bean/TableInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/offsec/nhterm/framework/database/SQLStatementHelper;->createTable(Lcom/offsec/nhterm/framework/database/bean/TableInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    iget-boolean v1, v1, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->debugMode:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    invoke-virtual {v1, v0}, Lcom/offsec/nhterm/utils/NLog;->w(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->afterTableCreateMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static instance()Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 1

    sget-object v0, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->DEFAULT_CONFIG:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    invoke-static {v0}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->instance(Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;)Lcom/offsec/nhterm/framework/NeoTermDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static instance(I)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 1

    new-instance v0, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    invoke-direct {v0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->setDatabaseVersion(I)V

    invoke-static {v0}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->instance(Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;)Lcom/offsec/nhterm/framework/NeoTermDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 2

    invoke-virtual {p0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->DAO_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/offsec/nhterm/framework/NeoTermDatabase;

    if-nez v1, :cond_0

    new-instance v1, Lcom/offsec/nhterm/framework/NeoTermDatabase;

    invoke-direct {v1, p0}, Lcom/offsec/nhterm/framework/NeoTermDatabase;-><init>(Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-direct {v1, p0}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->applyConfig(Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;)V

    :goto_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "DBName is null in SqLiteConfig."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static instance(Lcom/offsec/nhterm/framework/database/OnDatabaseUpgradedListener;)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 1

    new-instance v0, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    invoke-direct {v0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->setOnDatabaseUpgradedListener(Lcom/offsec/nhterm/framework/database/OnDatabaseUpgradedListener;)V

    invoke-static {v0}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->instance(Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;)Lcom/offsec/nhterm/framework/NeoTermDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Ljava/lang/String;)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 1

    new-instance v0, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    invoke-direct {v0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->setDatabaseName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->instance(Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;)Lcom/offsec/nhterm/framework/NeoTermDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Ljava/lang/String;I)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 1

    new-instance v0, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    invoke-direct {v0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->setDatabaseName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->setDatabaseVersion(I)V

    invoke-static {v0}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->instance(Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;)Lcom/offsec/nhterm/framework/NeoTermDatabase;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Ljava/lang/String;ILcom/offsec/nhterm/framework/database/OnDatabaseUpgradedListener;)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 1

    new-instance v0, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    invoke-direct {v0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;-><init>()V

    invoke-virtual {v0, p0}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->setDatabaseName(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->setDatabaseVersion(I)V

    invoke-virtual {v0, p2}, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->setOnDatabaseUpgradedListener(Lcom/offsec/nhterm/framework/database/OnDatabaseUpgradedListener;)V

    invoke-static {v0}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->instance(Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;)Lcom/offsec/nhterm/framework/NeoTermDatabase;

    move-result-object p0

    return-object p0
.end method

.method private isTableExist(Lcom/offsec/nhterm/framework/database/bean/TableInfo;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type =\'table\' AND name =\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->tableName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_2

    if-eqz p1, :cond_0

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_1

    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public deleteBeanByID(Ljava/lang/Class;Ljava/lang/Object;)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/offsec/nhterm/framework/NeoTermDatabase;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->createTableIfNeed(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/offsec/nhterm/framework/database/TableHelper;->from(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/bean/TableInfo;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/offsec/nhterm/framework/database/SQLTypeParser;->getDataType(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-static {v1, v0}, Lcom/offsec/nhterm/framework/database/SQLTypeParser;->matchType(Ljava/lang/reflect/Field;Lcom/offsec/nhterm/framework/database/DatabaseDataType;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u7c7b\u578b "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u4e0d\u662f\u4e3b\u952e\u7684\u7c7b\u578b,\u4e3b\u952e\u7684\u7c7b\u578b\u5e94\u8be5\u4e3a "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {v0, p2}, Lcom/offsec/nhterm/framework/database/ValueHelper;->valueToString(Lcom/offsec/nhterm/framework/database/DatabaseDataType;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    const-string p2, "_id"

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {p1, p2}, Lcom/offsec/nhterm/framework/database/SQLStatementHelper;->deleteByWhere(Lcom/offsec/nhterm/framework/database/bean/TableInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    iget-boolean p2, p2, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->debugMode:Z

    if-eqz p2, :cond_3

    sget-object p2, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    invoke-virtual {p2, p1}, Lcom/offsec/nhterm/utils/NLog;->w(Ljava/lang/Object;)V

    :cond_3
    :try_start_0
    iget-object p2, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    :goto_2
    return-object p0
.end method

.method public deleteBeanByWhere(Ljava/lang/Class;Ljava/lang/String;)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/offsec/nhterm/framework/NeoTermDatabase;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->createTableIfNeed(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/offsec/nhterm/framework/database/TableHelper;->from(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/bean/TableInfo;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/offsec/nhterm/framework/database/SQLStatementHelper;->deleteByWhere(Lcom/offsec/nhterm/framework/database/bean/TableInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    iget-boolean p2, p2, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->debugMode:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    invoke-virtual {p2, p1}, Lcom/offsec/nhterm/utils/NLog;->w(Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/database/SQLException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public destroy()V
    .locals 1

    sget-object v0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->DAO_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    iput-object v0, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public dropAllTable()V
    .locals 3

    iget-object v0, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT name FROM sqlite_master WHERE type =\'table\'"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->dropTable(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    throw v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method public dropTable(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/offsec/nhterm/framework/database/TableHelper;->from(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/bean/TableInfo;

    move-result-object p1

    iget-object v0, p1, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->tableName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->dropTable(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->isCreate:Z

    return-void
.end method

.method public dropTable(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    iget-boolean v1, v1, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->debugMode:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    invoke-virtual {v1, v0}, Lcom/offsec/nhterm/utils/NLog;->w(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/offsec/nhterm/framework/database/TableHelper;->findTableInfoByName(Ljava/lang/String;)Lcom/offsec/nhterm/framework/database/bean/TableInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->isCreate:Z

    :cond_1
    return-void
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->createTableIfNeed(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/offsec/nhterm/framework/database/TableHelper;->from(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/bean/TableInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->tableName:Ljava/lang/String;

    invoke-static {v1}, Lcom/offsec/nhterm/framework/database/SQLStatementHelper;->selectTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    iget-boolean v2, v2, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->debugMode:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    invoke-virtual {v2, v1}, Lcom/offsec/nhterm/utils/NLog;->w(Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_2

    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p1}, Lcom/offsec/nhterm/framework/reflection/Reflect;->on(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/reflection/Reflect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/offsec/nhterm/framework/reflection/Reflect;->create()Lcom/offsec/nhterm/framework/reflection/Reflect;

    move-result-object v3

    invoke-virtual {v3}, Lcom/offsec/nhterm/framework/reflection/Reflect;->get()Ljava/lang/Object;

    move-result-object v3

    iget-boolean v4, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->containID:Z

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-static {v4}, Lcom/offsec/nhterm/framework/database/SQLTypeParser;->getDataType(Ljava/lang/reflect/Field;)Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    move-result-object v4

    iget-object v5, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v3, v6, v4, v5}, Lcom/offsec/nhterm/framework/database/ValueHelper;->setKeyValue(Landroid/database/Cursor;Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/offsec/nhterm/framework/database/DatabaseDataType;I)V

    :cond_3
    iget-object v4, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->fieldToDataTypeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    iget-object v6, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->fieldToDataTypeMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-static {v1, v3, v5, v6, v7}, Lcom/offsec/nhterm/framework/database/ValueHelper;->setKeyValue(Landroid/database/Cursor;Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/offsec/nhterm/framework/database/DatabaseDataType;I)V

    goto :goto_1

    :cond_4
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v2

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_7

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw p1
.end method

.method public findBeanByID(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->createTableIfNeed(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/offsec/nhterm/framework/database/TableHelper;->from(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/bean/TableInfo;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/offsec/nhterm/framework/database/SQLTypeParser;->getDataType(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-static {v3, v1}, Lcom/offsec/nhterm/framework/database/SQLTypeParser;->matchType(Ljava/lang/reflect/Field;Lcom/offsec/nhterm/framework/database/DatabaseDataType;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_b

    invoke-static {v1, p2}, Lcom/offsec/nhterm/framework/database/ValueHelper;->valueToString(Lcom/offsec/nhterm/framework/database/DatabaseDataType;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    const-string v4, "_id"

    if-nez v3, :cond_3

    move-object v1, v4

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-static {v0, v1}, Lcom/offsec/nhterm/framework/database/SQLStatementHelper;->findByWhere(Lcom/offsec/nhterm/framework/database/bean/TableInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    iget-boolean v3, v3, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->debugMode:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    invoke-virtual {v3, v1}, Lcom/offsec/nhterm/utils/NLog;->w(Ljava/lang/Object;)V

    :cond_4
    iget-object v3, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_9

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-static {p1}, Lcom/offsec/nhterm/framework/reflection/Reflect;->on(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/reflection/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/offsec/nhterm/framework/reflection/Reflect;->create()Lcom/offsec/nhterm/framework/reflection/Reflect;

    move-result-object p1

    invoke-virtual {p1}, Lcom/offsec/nhterm/framework/reflection/Reflect;->get()Ljava/lang/Object;

    move-result-object p1

    iget-object v2, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->fieldToDataTypeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    iget-object v5, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->fieldToDataTypeMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, p1, v3, v5, v6}, Lcom/offsec/nhterm/framework/database/ValueHelper;->setKeyValue(Landroid/database/Cursor;Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/offsec/nhterm/framework/database/DatabaseDataType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_3

    :cond_5
    :try_start_1
    invoke-static {p1}, Lcom/offsec/nhterm/framework/reflection/Reflect;->on(Ljava/lang/Object;)Lcom/offsec/nhterm/framework/reflection/Reflect;

    move-result-object v2

    iget-boolean v3, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->containID:Z

    if-eqz v3, :cond_6

    iget-object v0, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {v2, v4, p2}, Lcom/offsec/nhterm/framework/reflection/Reflect;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/offsec/nhterm/framework/reflection/Reflect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    nop

    :goto_4
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object p1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_8

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    throw p1

    :cond_9
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v2

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not the primary key, expecting "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public findBeanByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->createTableIfNeed(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/offsec/nhterm/framework/database/TableHelper;->from(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/bean/TableInfo;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/offsec/nhterm/framework/database/SQLStatementHelper;->findByWhere(Lcom/offsec/nhterm/framework/database/bean/TableInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    iget-boolean v1, v1, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->debugMode:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    invoke-virtual {v1, p2}, Lcom/offsec/nhterm/utils/NLog;->w(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-nez p2, :cond_2

    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/offsec/nhterm/framework/reflection/Reflect;->on(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/reflection/Reflect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/offsec/nhterm/framework/reflection/Reflect;->create()Lcom/offsec/nhterm/framework/reflection/Reflect;

    move-result-object v2

    invoke-virtual {v2}, Lcom/offsec/nhterm/framework/reflection/Reflect;->get()Ljava/lang/Object;

    move-result-object v2

    iget-boolean v3, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->containID:Z

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-static {v3}, Lcom/offsec/nhterm/framework/database/SQLTypeParser;->getDataType(Ljava/lang/reflect/Field;)Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    move-result-object v3

    iget-object v4, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-static {p2, v2, v5, v3, v4}, Lcom/offsec/nhterm/framework/database/ValueHelper;->setKeyValue(Landroid/database/Cursor;Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/offsec/nhterm/framework/database/DatabaseDataType;I)V

    :cond_3
    iget-object v3, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->fieldToDataTypeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    iget-object v5, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->fieldToDataTypeMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-static {p2, v2, v4, v5, v6}, Lcom/offsec/nhterm/framework/database/ValueHelper;->setKeyValue(Landroid/database/Cursor;Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/offsec/nhterm/framework/database/DatabaseDataType;I)V

    goto :goto_1

    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_7

    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw p1
.end method

.method public findOneBeanByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->findBeanByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getTableList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT name FROM sqlite_master WHERE type =\'table\'"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->DAO_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    iget-boolean v0, v0, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->debugMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    const-string v1, "\u7f13\u5b58\u7684DAO\u5df2\u7ecf\u5168\u90e8\u6e05\u9664,\u5c06\u4e0d\u5360\u7528\u5185\u5b58."

    invoke-virtual {v0, v1}, Lcom/offsec/nhterm/utils/NLog;->d(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public saveBean(Ljava/lang/Object;)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/offsec/nhterm/framework/NeoTermDatabase;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->createTableIfNeed(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/offsec/nhterm/framework/database/SQLStatementHelper;->insertIntoTable(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    iget-boolean v0, v0, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->debugMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    invoke-virtual {v0, p1}, Lcom/offsec/nhterm/utils/NLog;->w(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-object p0
.end method

.method public saveBeans(Ljava/util/List;)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/offsec/nhterm/framework/NeoTermDatabase;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->saveBean(Ljava/lang/Object;)Lcom/offsec/nhterm/framework/NeoTermDatabase;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public saveBeans([Ljava/lang/Object;)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->saveBean(Ljava/lang/Object;)Lcom/offsec/nhterm/framework/NeoTermDatabase;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public tableCount()I
    .locals 3

    iget-object v0, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT name FROM sqlite_master WHERE type =\'table\'"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public updateByID(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/offsec/nhterm/framework/NeoTermDatabase;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->createTableIfNeed(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/offsec/nhterm/framework/database/TableHelper;->from(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/bean/TableInfo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->containID:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/offsec/nhterm/framework/database/bean/TableInfo;->primaryField:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lcom/offsec/nhterm/framework/database/SQLTypeParser;->getDataType(Ljava/lang/reflect/Field;)Lcom/offsec/nhterm/framework/database/DatabaseDataType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/offsec/nhterm/framework/database/ValueHelper;->valueToString(Lcom/offsec/nhterm/framework/database/DatabaseDataType;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "_id = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->updateByWhere(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lcom/offsec/nhterm/framework/NeoTermDatabase;

    return-object p0
.end method

.method public updateByWhere(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lcom/offsec/nhterm/framework/NeoTermDatabase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/offsec/nhterm/framework/NeoTermDatabase;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/offsec/nhterm/framework/NeoTermDatabase;->createTableIfNeed(Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/offsec/nhterm/framework/database/TableHelper;->from(Ljava/lang/Class;)Lcom/offsec/nhterm/framework/database/bean/TableInfo;

    move-result-object p1

    invoke-static {p1, p3, p2}, Lcom/offsec/nhterm/framework/database/SQLStatementHelper;->updateByWhere(Lcom/offsec/nhterm/framework/database/bean/TableInfo;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->neoTermSQLiteConfig:Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;

    iget-boolean p2, p2, Lcom/offsec/nhterm/framework/database/NeoTermSQLiteConfig;->debugMode:Z

    if-eqz p2, :cond_0

    sget-object p2, Lcom/offsec/nhterm/utils/NLog;->INSTANCE:Lcom/offsec/nhterm/utils/NLog;

    invoke-virtual {p2, p1}, Lcom/offsec/nhterm/utils/NLog;->d(Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-object p0
.end method

.method public vacuum()V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nhterm/framework/NeoTermDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "VACUUM"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
