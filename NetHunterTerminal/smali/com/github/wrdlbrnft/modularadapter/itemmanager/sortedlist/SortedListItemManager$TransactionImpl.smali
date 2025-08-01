.class Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;
.super Ljava/lang/Object;
.source "SortedListItemManager.java"

# interfaces
.implements Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransactionImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$Action<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;


# direct methods
.method public static synthetic $r8$lambda$22XxnQz25jrNGJB8xXR5FPR-6Kk(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->notifyTransactionsFinished()V

    return-void
.end method

.method public static synthetic $r8$lambda$LH5xsPpKe_alesfk8mRoBbjOE8Q(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->performTransactions()V

    return-void
.end method

.method private constructor <init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)V
    .locals 0

    iput-object p1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->mActions:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;-><init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)V

    return-void
.end method

.method private initializeCommit(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$Action<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$300(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {p1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$400(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->startTransaction()V

    :cond_0
    return-void
.end method

.method private notifyTransactionsFinished()V
    .locals 2

    iget-object v0, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$500(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/ItemManager$StateCallback;

    invoke-interface {v1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/ItemManager$StateCallback;->onChangesFinished()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyTransactionsStarted()V
    .locals 2

    iget-object v0, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$500(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/ItemManager$StateCallback;

    invoke-interface {v1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/ItemManager$StateCallback;->onChangesInProgress()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private performTransactions()V
    .locals 4

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$300(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$300(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$400(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$600(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Landroidx/recyclerview/widget/SortedList;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/SortedList;->beginBatchedUpdates()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$Action;

    iget-object v3, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v3}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$600(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Landroidx/recyclerview/widget/SortedList;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$Action;->perform(Landroidx/recyclerview/widget/SortedList;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$600(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Landroidx/recyclerview/widget/SortedList;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/SortedList;->endBatchedUpdates()V

    iget-object v1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$700(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ChangeCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ChangeCache;->applyChanges()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$400(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$400(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$200()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v1
.end method

.method private startTransaction()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda7;-><init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-direct {p0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->notifyTransactionsStarted()V

    return-void
.end method


# virtual methods
.method public add(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;)Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->mActions:Ljava/util/List;

    new-instance v1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda5;-><init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction;
    .locals 0

    check-cast p1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;

    invoke-virtual {p0, p1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->add(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;)Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/util/Collection;)Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->mActions:Ljava/util/List;

    new-instance v1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda6;-><init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public commit()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->mActions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$200()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda8;-><init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$add$0$com-github-wrdlbrnft-modularadapter-itemmanager-sortedlist-SortedListItemManager$TransactionImpl(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;Landroidx/recyclerview/widget/SortedList;)V
    .locals 0

    iget-object p2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {p2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$600(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Landroidx/recyclerview/widget/SortedList;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/SortedList;->add(Ljava/lang/Object;)I

    return-void
.end method

.method synthetic lambda$add$1$com-github-wrdlbrnft-modularadapter-itemmanager-sortedlist-SortedListItemManager$TransactionImpl(Ljava/util/Collection;Landroidx/recyclerview/widget/SortedList;)V
    .locals 0

    iget-object p2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {p2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$600(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Landroidx/recyclerview/widget/SortedList;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/SortedList;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method synthetic lambda$commit$6$com-github-wrdlbrnft-modularadapter-itemmanager-sortedlist-SortedListItemManager$TransactionImpl(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->initializeCommit(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$remove$2$com-github-wrdlbrnft-modularadapter-itemmanager-sortedlist-SortedListItemManager$TransactionImpl(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;Landroidx/recyclerview/widget/SortedList;)V
    .locals 0

    iget-object p2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {p2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$600(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Landroidx/recyclerview/widget/SortedList;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/SortedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$remove$3$com-github-wrdlbrnft-modularadapter-itemmanager-sortedlist-SortedListItemManager$TransactionImpl(Ljava/util/Collection;Landroidx/recyclerview/widget/SortedList;)V
    .locals 3

    iget-object p2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {p2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$800(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;

    check-cast p2, [Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;

    iget-object p2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {p2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$900(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$600(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Landroidx/recyclerview/widget/SortedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/SortedList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic lambda$removeAll$5$com-github-wrdlbrnft-modularadapter-itemmanager-sortedlist-SortedListItemManager$TransactionImpl(Landroidx/recyclerview/widget/SortedList;)V
    .locals 0

    iget-object p1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {p1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$600(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Landroidx/recyclerview/widget/SortedList;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/SortedList;->clear()V

    return-void
.end method

.method synthetic lambda$replaceAll$4$com-github-wrdlbrnft-modularadapter-itemmanager-sortedlist-SortedListItemManager$TransactionImpl(Ljava/util/Collection;Landroidx/recyclerview/widget/SortedList;)V
    .locals 3

    iget-object p2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {p2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$800(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/lang/Class;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;

    check-cast p2, [Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;

    iget-object p2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {p2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$900(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/util/Comparator;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget-object p2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {p2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$600(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Landroidx/recyclerview/widget/SortedList;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/SortedList;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$600(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Landroidx/recyclerview/widget/SortedList;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;

    iget-object v2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$900(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {v2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$600(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Landroidx/recyclerview/widget/SortedList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/SortedList;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->this$0:Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;

    invoke-static {p2}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;->access$600(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager;)Landroidx/recyclerview/widget/SortedList;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroidx/recyclerview/widget/SortedList;->addAll([Ljava/lang/Object;Z)V

    return-void
.end method

.method public remove(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;)Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->mActions:Ljava/util/List;

    new-instance v1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda3;-><init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction;
    .locals 0

    check-cast p1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;

    invoke-virtual {p0, p1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->remove(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$ViewModel;)Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/util/Collection;)Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->mActions:Ljava/util/List;

    new-instance v1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public removeAll()Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->mActions:Ljava/util/List;

    new-instance v1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public replaceAll(Ljava/util/Collection;)Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Lcom/github/wrdlbrnft/modularadapter/itemmanager/ModifiableItemManager$Transaction<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;->mActions:Ljava/util/List;

    new-instance v1, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl$$ExternalSyntheticLambda4;-><init>(Lcom/github/wrdlbrnft/modularadapter/itemmanager/sortedlist/SortedListItemManager$TransactionImpl;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
