.class final Lorg/greenrobot/eventbus/PendingPost;
.super Ljava/lang/Object;
.source "PendingPost.java"


# static fields
.field private static final pendingPostPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/greenrobot/eventbus/PendingPost;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field event:Ljava/lang/Object;

.field next:Lorg/greenrobot/eventbus/PendingPost;

.field subscription:Lorg/greenrobot/eventbus/Subscription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/greenrobot/eventbus/PendingPost;->pendingPostPool:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/Subscription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/greenrobot/eventbus/PendingPost;->event:Ljava/lang/Object;

    iput-object p2, p0, Lorg/greenrobot/eventbus/PendingPost;->subscription:Lorg/greenrobot/eventbus/Subscription;

    return-void
.end method

.method static obtainPendingPost(Lorg/greenrobot/eventbus/Subscription;Ljava/lang/Object;)Lorg/greenrobot/eventbus/PendingPost;
    .locals 2

    sget-object v0, Lorg/greenrobot/eventbus/PendingPost;->pendingPostPool:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/greenrobot/eventbus/PendingPost;

    iput-object p1, v1, Lorg/greenrobot/eventbus/PendingPost;->event:Ljava/lang/Object;

    iput-object p0, v1, Lorg/greenrobot/eventbus/PendingPost;->subscription:Lorg/greenrobot/eventbus/Subscription;

    const/4 p0, 0x0

    iput-object p0, v1, Lorg/greenrobot/eventbus/PendingPost;->next:Lorg/greenrobot/eventbus/PendingPost;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lorg/greenrobot/eventbus/PendingPost;

    invoke-direct {v0, p1, p0}, Lorg/greenrobot/eventbus/PendingPost;-><init>(Ljava/lang/Object;Lorg/greenrobot/eventbus/Subscription;)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static releasePendingPost(Lorg/greenrobot/eventbus/PendingPost;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/greenrobot/eventbus/PendingPost;->event:Ljava/lang/Object;

    iput-object v0, p0, Lorg/greenrobot/eventbus/PendingPost;->subscription:Lorg/greenrobot/eventbus/Subscription;

    iput-object v0, p0, Lorg/greenrobot/eventbus/PendingPost;->next:Lorg/greenrobot/eventbus/PendingPost;

    sget-object v0, Lorg/greenrobot/eventbus/PendingPost;->pendingPostPool:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
