.class public Ljava8/nio/file/SimpleFileVisitor;
.super Ljava/lang/Object;
.source "SimpleFileVisitor.java"

# interfaces
.implements Ljava8/nio/file/FileVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/nio/file/FileVisitor<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava8/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "exc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/IOException;",
            ")",
            "Ljava8/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    sget-object p1, Ljava8/nio/file/FileVisitResult;->CONTINUE:Ljava8/nio/file/FileVisitResult;

    return-object p1

    :cond_0
    throw p2
.end method

.method public preVisitDirectory(Ljava/lang/Object;Ljava8/nio/file/attribute/BasicFileAttributes;)Ljava8/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dir",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava8/nio/file/attribute/BasicFileAttributes;",
            ")",
            "Ljava8/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljava8/nio/file/FileVisitResult;->CONTINUE:Ljava8/nio/file/FileVisitResult;

    return-object p1
.end method

.method public visitFile(Ljava/lang/Object;Ljava8/nio/file/attribute/BasicFileAttributes;)Ljava8/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "attrs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava8/nio/file/attribute/BasicFileAttributes;",
            ")",
            "Ljava8/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ljava8/nio/file/FileVisitResult;->CONTINUE:Ljava8/nio/file/FileVisitResult;

    return-object p1
.end method

.method public visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava8/nio/file/FileVisitResult;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "exc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/io/IOException;",
            ")",
            "Ljava8/nio/file/FileVisitResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/threeten/bp/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p2
.end method
