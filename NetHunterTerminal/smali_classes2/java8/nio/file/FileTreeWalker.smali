.class Ljava8/nio/file/FileTreeWalker;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/nio/file/FileTreeWalker$Event;,
        Ljava8/nio/file/FileTreeWalker$EventType;,
        Ljava8/nio/file/FileTreeWalker$DirectoryNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z

.field private final followLinks:Z

.field private final linkOptions:[Ljava8/nio/file/LinkOption;

.field private final maxDepth:I

.field private final stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava8/nio/file/FileTreeWalker$DirectoryNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "options",
            "maxDepth"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava8/nio/file/FileVisitOption;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ljava8/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava8/nio/file/FileVisitOption;

    sget-object v2, Ljava8/nio/file/FileTreeWalker$1;->$SwitchMap$java8$nio$file$FileVisitOption:[I

    invoke-virtual {v1}, Ljava8/nio/file/FileVisitOption;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Should not get here"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    if-ltz p2, :cond_3

    iput-boolean v1, p0, Ljava8/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v1, :cond_2

    new-array p1, v0, [Ljava8/nio/file/LinkOption;

    goto :goto_1

    :cond_2
    new-array p1, v3, [Ljava8/nio/file/LinkOption;

    sget-object v1, Ljava8/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava8/nio/file/LinkOption;

    aput-object v1, p1, v0

    :goto_1
    iput-object p1, p0, Ljava8/nio/file/FileTreeWalker;->linkOptions:[Ljava8/nio/file/LinkOption;

    iput p2, p0, Ljava8/nio/file/FileTreeWalker;->maxDepth:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'maxDepth\' is negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAttributes(Ljava8/nio/file/Path;Z)Ljava8/nio/file/attribute/BasicFileAttributes;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "canUseCached"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-class p2, Ljava8/nio/file/attribute/BasicFileAttributes;

    iget-object v0, p0, Ljava8/nio/file/FileTreeWalker;->linkOptions:[Ljava8/nio/file/LinkOption;

    invoke-static {p1, p2, v0}, Ljava8/nio/file/Files;->readAttributes(Ljava8/nio/file/Path;Ljava/lang/Class;[Ljava8/nio/file/LinkOption;)Ljava8/nio/file/attribute/BasicFileAttributes;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iget-boolean v0, p0, Ljava8/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v0, :cond_0

    const-class p2, Ljava8/nio/file/attribute/BasicFileAttributes;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava8/nio/file/LinkOption;

    const/4 v1, 0x0

    sget-object v2, Ljava8/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava8/nio/file/LinkOption;

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Ljava8/nio/file/Files;->readAttributes(Ljava8/nio/file/Path;Ljava/lang/Class;[Ljava8/nio/file/LinkOption;)Ljava8/nio/file/attribute/BasicFileAttributes;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    throw p2
.end method

.method private visit(Ljava8/nio/file/Path;ZZ)Ljava8/nio/file/FileTreeWalker$Event;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entry",
            "ignoreSecurityException",
            "canUseCached"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p3}, Ljava8/nio/file/FileTreeWalker;->getAttributes(Ljava8/nio/file/Path;Z)Ljava8/nio/file/attribute/BasicFileAttributes;

    move-result-object p3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v1, p0, Ljava8/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    iget v2, p0, Ljava8/nio/file/FileTreeWalker;->maxDepth:I

    if-ge v1, v2, :cond_3

    invoke-interface {p3}, Ljava8/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Ljava8/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava8/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Ljava8/nio/file/FileTreeWalker;->wouldLoop(Ljava8/nio/file/Path;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, Ljava8/nio/file/FileTreeWalker$Event;

    sget-object p3, Ljava8/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava8/nio/file/FileTreeWalker$EventType;

    new-instance v0, Ljava8/nio/file/FileSystemLoopException;

    invoke-interface {p1}, Ljava8/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava8/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3, p1, v0}, Ljava8/nio/file/FileTreeWalker$Event;-><init>(Ljava8/nio/file/FileTreeWalker$EventType;Ljava8/nio/file/Path;Ljava/io/IOException;)V

    return-object p2

    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava8/nio/file/Files;->newDirectoryStream(Ljava8/nio/file/Path;)Ljava8/nio/file/DirectoryStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Ljava8/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    new-instance v1, Ljava8/nio/file/FileTreeWalker$DirectoryNode;

    invoke-interface {p3}, Ljava8/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p1, v2, p2}, Ljava8/nio/file/FileTreeWalker$DirectoryNode;-><init>(Ljava8/nio/file/Path;Ljava/lang/Object;Ljava8/nio/file/DirectoryStream;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    new-instance p2, Ljava8/nio/file/FileTreeWalker$Event;

    sget-object v0, Ljava8/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljava8/nio/file/FileTreeWalker$EventType;

    invoke-direct {p2, v0, p1, p3}, Ljava8/nio/file/FileTreeWalker$Event;-><init>(Ljava8/nio/file/FileTreeWalker$EventType;Ljava8/nio/file/Path;Ljava8/nio/file/attribute/BasicFileAttributes;)V

    return-object p2

    :catch_0
    move-exception p1

    if-eqz p2, :cond_2

    return-object v0

    :cond_2
    throw p1

    :catch_1
    move-exception p2

    new-instance p3, Ljava8/nio/file/FileTreeWalker$Event;

    sget-object v0, Ljava8/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava8/nio/file/FileTreeWalker$EventType;

    invoke-direct {p3, v0, p1, p2}, Ljava8/nio/file/FileTreeWalker$Event;-><init>(Ljava8/nio/file/FileTreeWalker$EventType;Ljava8/nio/file/Path;Ljava/io/IOException;)V

    return-object p3

    :cond_3
    :goto_0
    new-instance p2, Ljava8/nio/file/FileTreeWalker$Event;

    sget-object v0, Ljava8/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava8/nio/file/FileTreeWalker$EventType;

    invoke-direct {p2, v0, p1, p3}, Ljava8/nio/file/FileTreeWalker$Event;-><init>(Ljava8/nio/file/FileTreeWalker$EventType;Ljava8/nio/file/Path;Ljava8/nio/file/attribute/BasicFileAttributes;)V

    return-object p2

    :catch_2
    move-exception p1

    if-eqz p2, :cond_4

    return-object v0

    :cond_4
    throw p1

    :catch_3
    move-exception p2

    new-instance p3, Ljava8/nio/file/FileTreeWalker$Event;

    sget-object v0, Ljava8/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava8/nio/file/FileTreeWalker$EventType;

    invoke-direct {p3, v0, p1, p2}, Ljava8/nio/file/FileTreeWalker$Event;-><init>(Ljava8/nio/file/FileTreeWalker$EventType;Ljava8/nio/file/Path;Ljava/io/IOException;)V

    return-object p3
.end method

.method private wouldLoop(Ljava8/nio/file/Path;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "key"
        }
    .end annotation

    iget-object v0, p0, Ljava8/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava8/nio/file/FileTreeWalker$DirectoryNode;

    invoke-virtual {v1}, Ljava8/nio/file/FileTreeWalker$DirectoryNode;->key()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava8/nio/file/FileTreeWalker$DirectoryNode;->directory()Ljava8/nio/file/Path;

    move-result-object v1

    invoke-static {p1, v1}, Ljava8/nio/file/Files;->isSameFile(Ljava8/nio/file/Path;Ljava8/nio/file/Path;)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v3

    :catch_0
    nop

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Ljava8/nio/file/FileTreeWalker;->closed:Z

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Ljava8/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava8/nio/file/FileTreeWalker;->pop()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava8/nio/file/FileTreeWalker;->closed:Z

    :cond_1
    return-void
.end method

.method isOpen()Z
    .locals 1

    iget-boolean v0, p0, Ljava8/nio/file/FileTreeWalker;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method next()Ljava8/nio/file/FileTreeWalker$Event;
    .locals 4

    iget-object v0, p0, Ljava8/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/nio/file/FileTreeWalker$DirectoryNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava8/nio/file/FileTreeWalker$DirectoryNode;->skipped()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava8/nio/file/FileTreeWalker$DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava8/nio/file/Path;
    :try_end_0
    .catch Ljava8/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v3, v1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava8/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v2

    move-object v3, v2

    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v2, v1

    move-object v3, v2

    :goto_1
    if-nez v2, :cond_4

    :try_start_1
    invoke-virtual {v0}, Ljava8/nio/file/FileTreeWalker$DirectoryNode;->stream()Ljava8/nio/file/DirectoryStream;

    move-result-object v1

    invoke-interface {v1}, Ljava8/nio/file/DirectoryStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    if-eqz v3, :cond_3

    move-object v3, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v3, v1}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    iget-object v1, p0, Ljava8/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    new-instance v1, Ljava8/nio/file/FileTreeWalker$Event;

    sget-object v2, Ljava8/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava8/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v0}, Ljava8/nio/file/FileTreeWalker$DirectoryNode;->directory()Ljava8/nio/file/Path;

    move-result-object v0

    invoke-direct {v1, v2, v0, v3}, Ljava8/nio/file/FileTreeWalker$Event;-><init>(Ljava8/nio/file/FileTreeWalker$EventType;Ljava8/nio/file/Path;Ljava/io/IOException;)V

    return-object v1

    :cond_4
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, v3}, Ljava8/nio/file/FileTreeWalker;->visit(Ljava8/nio/file/Path;ZZ)Ljava8/nio/file/FileTreeWalker$Event;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2
.end method

.method pop()V
    .locals 1

    iget-object v0, p0, Ljava8/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/nio/file/FileTreeWalker$DirectoryNode;

    :try_start_0
    invoke-virtual {v0}, Ljava8/nio/file/FileTreeWalker$DirectoryNode;->stream()Ljava8/nio/file/DirectoryStream;

    move-result-object v0

    invoke-interface {v0}, Ljava8/nio/file/DirectoryStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method skipRemainingSiblings()V
    .locals 1

    iget-object v0, p0, Ljava8/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/nio/file/FileTreeWalker$DirectoryNode;

    invoke-virtual {v0}, Ljava8/nio/file/FileTreeWalker$DirectoryNode;->skip()V

    :cond_0
    return-void
.end method

.method walk(Ljava8/nio/file/Path;)Ljava8/nio/file/FileTreeWalker$Event;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    iget-boolean v0, p0, Ljava8/nio/file/FileTreeWalker;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljava8/nio/file/FileTreeWalker;->visit(Ljava8/nio/file/Path;ZZ)Ljava8/nio/file/FileTreeWalker$Event;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
