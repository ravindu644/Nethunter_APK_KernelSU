.class Lcom/google/common/collect/Lists$TransformingRandomAccessList$1;
.super Lcom/google/common/collect/TransformedListIterator;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$TransformingRandomAccessList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedListIterator<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Lists$TransformingRandomAccessList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$TransformingRandomAccessList;Ljava/util/ListIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "backingIterator"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList$1;->this$0:Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedListIterator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "from"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Lists$TransformingRandomAccessList$1;->this$0:Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    iget-object v0, v0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;->function:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
