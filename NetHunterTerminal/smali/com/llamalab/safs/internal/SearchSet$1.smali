.class Lcom/llamalab/safs/internal/SearchSet$1;
.super Ljava/lang/Object;
.source "SearchSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/llamalab/safs/internal/SearchSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/llamalab/safs/internal/SearchSet;


# direct methods
.method constructor <init>(Lcom/llamalab/safs/internal/SearchSet;)V
    .locals 0

    iput-object p1, p0, Lcom/llamalab/safs/internal/SearchSet$1;->this$0:Lcom/llamalab/safs/internal/SearchSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/llamalab/safs/internal/SearchSet$1;->index:I

    iget-object v1, p0, Lcom/llamalab/safs/internal/SearchSet$1;->this$0:Lcom/llamalab/safs/internal/SearchSet;

    invoke-static {v1}, Lcom/llamalab/safs/internal/SearchSet;->access$000(Lcom/llamalab/safs/internal/SearchSet;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/llamalab/safs/internal/SearchSet$1;->index:I

    iget-object v1, p0, Lcom/llamalab/safs/internal/SearchSet$1;->this$0:Lcom/llamalab/safs/internal/SearchSet;

    invoke-static {v1}, Lcom/llamalab/safs/internal/SearchSet;->access$000(Lcom/llamalab/safs/internal/SearchSet;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/llamalab/safs/internal/SearchSet$1;->this$0:Lcom/llamalab/safs/internal/SearchSet;

    invoke-static {v0}, Lcom/llamalab/safs/internal/SearchSet;->access$000(Lcom/llamalab/safs/internal/SearchSet;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/llamalab/safs/internal/SearchSet$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/llamalab/safs/internal/SearchSet$1;->index:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
