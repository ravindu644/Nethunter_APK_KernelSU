.class Landroidx/documentfile/provider/DocumentsContractApi19;
.super Ljava/lang/Object;
.source "DocumentsContractApi19.java"


# static fields
.field private static final FLAG_VIRTUAL_DOCUMENT:I = 0x200

.field private static final TAG:Ljava/lang/String; = "DocumentFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRead(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public static canWrite(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "flags"

    invoke-static {p0, p1, v3, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    and-int/lit8 p1, p0, 0x4

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    const-string p1, "vnd.android.document/directory"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_3

    return v3

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    and-int/2addr p0, v0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static exists(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8

    const-string v0, "Failed query: "

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string v2, "document_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "DocumentFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :goto_0
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public static getFlags(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 3

    const-string v0, "flags"

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    const-string v0, "_display_name"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    const-string v0, "mime_type"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "vnd.android.document/directory"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "vnd.android.document/directory"

    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "vnd.android.document/directory"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVirtual(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getFlags(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide p0

    const-wide/16 v2, 0x200

    and-long/2addr p0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, p0, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static lastModified(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 3

    const-string v0, "last_modified"

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static length(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 3

    const-string v0, "_size"

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 2

    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method private static queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 8

    const-string v0, "Failed query: "

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x1

    const/4 v7, 0x0

    :try_start_0
    new-array v3, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p2, v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v7, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v7, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide p0

    :cond_0
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide p3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DocumentFile"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide p3

    :goto_0
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method private static queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "Failed query: "

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x1

    const/4 v7, 0x0

    :try_start_0
    new-array v3, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p2, v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v7, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v7, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :cond_0
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DocumentFile"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p3

    :goto_0
    invoke-static {v7}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method
