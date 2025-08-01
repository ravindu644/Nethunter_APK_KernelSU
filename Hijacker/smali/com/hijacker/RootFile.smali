.class Lcom/hijacker/RootFile;
.super Ljava/lang/Object;
.source "RootFile.java"


# static fields
.field static out:Ljava/io/BufferedReader;

.field static shell:Lcom/hijacker/Shell;


# instance fields
.field private absolutePath:Ljava/lang/String;

.field private exists:Z

.field private isDirectory:Z

.field private isFile:Z

.field private isUnknownType:Z

.field private length:J

.field private name:Ljava/lang/String;

.field private parentPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hijacker/RootFile;->length:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/hijacker/RootFile;->parentPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/hijacker/RootFile;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hijacker/RootFile;->exists:Z

    iput-boolean v0, p0, Lcom/hijacker/RootFile;->isFile:Z

    iput-boolean v0, p0, Lcom/hijacker/RootFile;->isDirectory:Z

    iput-boolean v0, p0, Lcom/hijacker/RootFile;->isUnknownType:Z

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_a

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object v1, Lcom/hijacker/RootFile;->shell:Lcom/hijacker/Shell;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ls \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\" -d -l; echo ENDOFLS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    sget-object v1, Lcom/hijacker/RootFile;->out:Ljava/io/BufferedReader;

    const-string v4, "ENDOFLS"

    invoke-static {v1, v4}, Lcom/hijacker/MainActivity;->getLastLine(Ljava/io/BufferedReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-boolean p1, Lcom/hijacker/MainActivity;->debug:Z

    if-eqz p1, :cond_1

    const-string p1, "HIJACKER/RootFile"

    const-string v0, "Couldn\'t read shell output"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/hijacker/RootFile;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hijacker/RootFile;->parentPath:Ljava/lang/String;

    const-string p1, ""

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, " "

    if-nez v2, :cond_3

    const-string p1, "  "

    invoke-virtual {v1, p1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    move-object v6, v1

    move-object v1, p1

    move-object p1, v6

    goto :goto_0

    :cond_3
    const-string v2, "No such"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "ls:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iput-boolean v3, p0, Lcom/hijacker/RootFile;->exists:Z

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_7

    aget-object p1, v2, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v1, 0x64

    if-ne p1, v1, :cond_5

    iput-boolean v3, p0, Lcom/hijacker/RootFile;->isDirectory:Z

    goto :goto_1

    :cond_5
    aget-object p1, v2, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_6

    iput-boolean v3, p0, Lcom/hijacker/RootFile;->isFile:Z

    goto :goto_1

    :cond_6
    iput-boolean v3, p0, Lcom/hijacker/RootFile;->isUnknownType:Z

    :goto_1
    const/4 p1, 0x4

    :try_start_0
    aget-object p1, v2, p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hijacker/RootFile;->length:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_7
    new-instance v3, Ljava/util/IllegalFormatFlagsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v0, v2, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not how it should be\nbuffer: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nbuffer before: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/util/IllegalFormatFlagsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    :goto_2
    iput-boolean v3, p0, Lcom/hijacker/RootFile;->isUnknownType:Z

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File path contains * character"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File path must start with /"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File path has zero length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "File path can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static finish()V
    .locals 1

    sget-object v0, Lcom/hijacker/RootFile;->shell:Lcom/hijacker/Shell;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hijacker/Shell;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hijacker/RootFile;->shell:Lcom/hijacker/Shell;

    invoke-virtual {v0}, Lcom/hijacker/Shell;->done()V

    :cond_0
    return-void
.end method

.method static init()V
    .locals 1

    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object v0

    sput-object v0, Lcom/hijacker/RootFile;->shell:Lcom/hijacker/Shell;

    invoke-virtual {v0}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object v0

    sput-object v0, Lcom/hijacker/RootFile;->out:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method canExecute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method canRead()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method canWrite()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method createNewFile()V
    .locals 3

    invoke-virtual {p0}, Lcom/hijacker/RootFile;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hijacker/RootFile;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hijacker/RootFile;->shell:Lcom/hijacker/Shell;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " touch \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    new-instance v0, Lcom/hijacker/RootFile;

    iget-object v1, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hijacker/RootFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hijacker/RootFile;->exists:Z

    iput-boolean v0, p0, Lcom/hijacker/RootFile;->isFile:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hijacker/RootFile;->isUnknownType:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "path or name is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hijacker/RootFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, " and it\'s a directory"

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method delete()V
    .locals 3

    invoke-virtual {p0}, Lcom/hijacker/RootFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hijacker/RootFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/RootFile;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hijacker/RootFile;->shell:Lcom/hijacker/Shell;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rm \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hijacker/RootFile;->exists:Z

    iput-boolean v0, p0, Lcom/hijacker/RootFile;->isFile:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/hijacker/RootFile;->length:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "path or name is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/hijacker/RootFile;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Doesn\'t exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not a file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method exists()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hijacker/RootFile;->exists:Z

    return v0
.end method

.method getAbsolutePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hijacker/RootFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method getParentPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hijacker/RootFile;->parentPath:Ljava/lang/String;

    return-object v0
.end method

.method isDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hijacker/RootFile;->isDirectory:Z

    return v0
.end method

.method isFile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hijacker/RootFile;->isFile:Z

    return v0
.end method

.method isUnknownType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hijacker/RootFile;->isUnknownType:Z

    return v0
.end method

.method length()J
    .locals 2

    iget-wide v0, p0, Lcom/hijacker/RootFile;->length:J

    return-wide v0
.end method

.method listFiles()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hijacker/RootFile;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/hijacker/RootFile;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    invoke-static {}, Lcom/hijacker/Shell;->getFreeShell()Lcom/hijacker/Shell;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ls -l \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"; echo ENDOFLS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/hijacker/Shell;->getShell_out()Ljava/io/BufferedReader;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    :goto_1
    const-string v5, "ENDOFLS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "total"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const-string v5, ""

    move-object v6, v5

    :goto_2
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, " "

    if-nez v6, :cond_3

    :try_start_2
    const-string v6, "  "

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    move-object v6, v4

    move-object v4, v10

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    const/16 v7, 0x8

    if-le v6, v7, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    array-length v8, v4

    const/16 v9, 0x20

    if-ge v7, v8, :cond_4

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v4

    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, " -> "

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Lcom/hijacker/RootFile;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v7, :cond_6

    goto :goto_4

    :cond_6
    const/16 v5, 0x2f

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    :goto_4
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HIJACKER/RootFile"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :cond_8
    invoke-virtual {v1}, Lcom/hijacker/Shell;->done()V

    return-object v0
.end method

.method mkdir()V
    .locals 3

    iget-boolean v0, p0, Lcom/hijacker/RootFile;->exists:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hijacker/RootFile;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hijacker/RootFile;->shell:Lcom/hijacker/Shell;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/hijacker/MainActivity;->busybox:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mkdir \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hijacker/Shell;->run(Ljava/lang/String;)V

    :goto_0
    :try_start_0
    new-instance v0, Lcom/hijacker/RootFile;

    iget-object v1, p0, Lcom/hijacker/RootFile;->absolutePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hijacker/RootFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hijacker/RootFile;->exists:Z

    iput-boolean v0, p0, Lcom/hijacker/RootFile;->isDirectory:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hijacker/RootFile;->isUnknownType:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "path or name is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hijacker/RootFile;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, " and it\'s a file"

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
