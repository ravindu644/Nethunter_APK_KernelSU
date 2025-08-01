.class public Lcom/llamalab/safs/internal/CompleteBasicFileAttributes;
.super Lcom/llamalab/safs/internal/PartialBasicFileAttributes;
.source "CompleteBasicFileAttributes.java"


# instance fields
.field private final creationTime:Lcom/llamalab/safs/attributes/FileTime;

.field private final fileKey:Ljava/lang/Object;

.field private final lastAccessTime:Lcom/llamalab/safs/attributes/FileTime;

.field private final lastModifiedTime:Lcom/llamalab/safs/attributes/FileTime;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/llamalab/safs/internal/FileType;JLcom/llamalab/safs/attributes/FileTime;Lcom/llamalab/safs/attributes/FileTime;Lcom/llamalab/safs/attributes/FileTime;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lcom/llamalab/safs/internal/PartialBasicFileAttributes;-><init>(Lcom/llamalab/safs/internal/FileType;J)V

    iput-object p1, p0, Lcom/llamalab/safs/internal/CompleteBasicFileAttributes;->fileKey:Ljava/lang/Object;

    iput-object p5, p0, Lcom/llamalab/safs/internal/CompleteBasicFileAttributes;->creationTime:Lcom/llamalab/safs/attributes/FileTime;

    iput-object p6, p0, Lcom/llamalab/safs/internal/CompleteBasicFileAttributes;->lastModifiedTime:Lcom/llamalab/safs/attributes/FileTime;

    iput-object p7, p0, Lcom/llamalab/safs/internal/CompleteBasicFileAttributes;->lastAccessTime:Lcom/llamalab/safs/attributes/FileTime;

    return-void
.end method


# virtual methods
.method public final creationTime()Lcom/llamalab/safs/attributes/FileTime;
    .locals 1

    iget-object v0, p0, Lcom/llamalab/safs/internal/CompleteBasicFileAttributes;->creationTime:Lcom/llamalab/safs/attributes/FileTime;

    return-object v0
.end method

.method public final fileKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/llamalab/safs/internal/CompleteBasicFileAttributes;->fileKey:Ljava/lang/Object;

    return-object v0
.end method

.method public final lastAccessTime()Lcom/llamalab/safs/attributes/FileTime;
    .locals 1

    iget-object v0, p0, Lcom/llamalab/safs/internal/CompleteBasicFileAttributes;->lastAccessTime:Lcom/llamalab/safs/attributes/FileTime;

    return-object v0
.end method

.method public final lastModifiedTime()Lcom/llamalab/safs/attributes/FileTime;
    .locals 1

    iget-object v0, p0, Lcom/llamalab/safs/internal/CompleteBasicFileAttributes;->lastModifiedTime:Lcom/llamalab/safs/attributes/FileTime;

    return-object v0
.end method
