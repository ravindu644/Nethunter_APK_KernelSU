.class Lcom/offsec/nethunter/SearchSploitSQL;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SearchSploitSQL.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "SearchSploit"

.field private static final DATABASE_VERSION:I = 0x1


# instance fields
.field private final exe:Lcom/offsec/nethunter/utils/ShellExecuter;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "SearchSploit"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    new-instance p1, Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-direct {p1}, Lcom/offsec/nethunter/utils/ShellExecuter;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/SearchSploitSQL;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    return-void
.end method

.method private createExploitList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/SearchSploit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Lcom/offsec/nethunter/SearchSploit;

    invoke-direct {v1}, Lcom/offsec/nethunter/SearchSploit;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/offsec/nethunter/SearchSploit;->setId(J)V

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/SearchSploit;->setFile(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/SearchSploit;->setDescription(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/SearchSploit;->setDate(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/SearchSploit;->setAuthor(Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/SearchSploit;->setPlatform(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/SearchSploit;->setType(Ljava/lang/String;)V

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/offsec/nethunter/SearchSploit;->setPort(Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private createStringList(Landroid/database/Cursor;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method


# virtual methods
.method doDbFeed()Ljava/lang/Boolean;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "su -c "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->APP_SCRIPTS_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/bootkali custom_cmd \'usr/bin/python3 /sdcard/nh_files/modules/csv2sqlite.py /usr/share/exploitdb/files_exploits.csv /tmp/SearchSploit SearchSploitTable\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/SearchSploitSQL;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mv "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/offsec/nethunter/utils/NhPaths;->CHROOT_SYMLINK_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/tmp/SearchSploit /sdcard/nh_files/SearchSploit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/offsec/nethunter/SearchSploitSQL;->exe:Lcom/offsec/nethunter/utils/ShellExecuter;

    invoke-virtual {v1, v0}, Lcom/offsec/nethunter/utils/ShellExecuter;->RunAsRootOutput(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public doDrop()V
    .locals 2

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DROP TABLE IF EXISTS SearchSploitTable"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getAllExploits()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/SearchSploit;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SELECT  * FROM SearchSploitTable LIMIT 100"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/SearchSploitSQL;->createExploitList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v1
.end method

.method getAllExploitsFiltered(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/SearchSploit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT * FROM SearchSploitTable WHERE DESCRIPTION like ? and TYPE=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' and PLATFORM=\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' GROUP BY ID"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string v0, "QUERYYY"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p3, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/SearchSploitSQL;->createExploitList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object p1
.end method

.method getAllExploitsRaw(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/offsec/nethunter/SearchSploit;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "EXPLOIT_QUERY"

    const-string v2, "SELECT * FROM SearchSploitTable WHERE ( DESCRIPTION like ? or AUTHOR like ? or TYPE like ? or PLATFORM like ? ) GROUP BY ID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const/4 v3, 0x2

    aput-object p1, v1, v3

    const/4 v3, 0x3

    aput-object p1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/offsec/nethunter/SearchSploitSQL;->createExploitList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object p1
.end method

.method getCount()J
    .locals 2

    const-string v0, "SELECT COUNT(*) FROM SearchSploitTable"

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method getPlatforms()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SELECT DISTINCT PLATFORM FROM SearchSploitTable ORDER BY PLATFORM ASC"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/SearchSploitSQL;->createStringList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v1
.end method

.method getTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/offsec/nethunter/SearchSploitSQL;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "SELECT DISTINCT TYPE FROM SearchSploitTable ORDER BY TYPE ASC"

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/offsec/nethunter/SearchSploitSQL;->createStringList(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE  IF NOT EXISTS SearchSploitTable (ID INTEGER PRIMARY KEY, FILE TEXT,DESCRIPTION TEXT,DATE TEXT,AUTHOR TEXT,TYPE TEXT,PLATFORM TEXT,PORT INTEGER DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/offsec/nethunter/SearchSploitSQL;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE IF EXISTS SearchSploitTable"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/offsec/nethunter/SearchSploitSQL;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
