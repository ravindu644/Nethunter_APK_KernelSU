.class Lcom/offsec/nethunter/AudioFragment$1;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/AudioFragment;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/AudioFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onServiceConnected$0$com-offsec-nethunter-AudioFragment$1(Lcom/offsec/nethunter/AudioPlayState;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {v0, p1}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$mupdatePlayState(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/AudioPlayState;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    check-cast p2, Lcom/offsec/nethunter/AudioPlaybackService$LocalBinder;

    invoke-virtual {p2}, Lcom/offsec/nethunter/AudioPlaybackService$LocalBinder;->getService()Lcom/offsec/nethunter/AudioPlaybackService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fputboundService(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/AudioPlaybackService;)V

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fgetboundService(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/AudioPlaybackService;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fgetboundService(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/AudioPlaybackService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlaybackService;->playState()Landroidx/lifecycle/LiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-virtual {p2}, Lcom/offsec/nethunter/AudioFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/offsec/nethunter/AudioFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/offsec/nethunter/AudioFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/offsec/nethunter/AudioFragment$1;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fgetboundService(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/AudioPlaybackService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlaybackService;->showNotification()V

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fgetboundService(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/AudioPlaybackService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$mupdatePrefs(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/AudioPlaybackService;)V

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fgetboundService(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/AudioPlaybackService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlaybackService;->getAutostartPref()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fgetboundService(Lcom/offsec/nethunter/AudioFragment;)Lcom/offsec/nethunter/AudioPlaybackService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioPlaybackService;->isStartable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    invoke-virtual {p1}, Lcom/offsec/nethunter/AudioFragment;->play()V

    :cond_0
    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fputisServiceBound(Lcom/offsec/nethunter/AudioFragment;Z)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fputboundService(Lcom/offsec/nethunter/AudioFragment;Lcom/offsec/nethunter/AudioPlaybackService;)V

    iget-object p1, p0, Lcom/offsec/nethunter/AudioFragment$1;->this$0:Lcom/offsec/nethunter/AudioFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/offsec/nethunter/AudioFragment;->-$$Nest$fputisServiceBound(Lcom/offsec/nethunter/AudioFragment;Z)V

    return-void
.end method
