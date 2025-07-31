.class Lcom/offsec/nethunter/AppNavHomeActivity$2;
.super Ljava/lang/Object;
.source "AppNavHomeActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/AppNavHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/AppNavHomeActivity;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    check-cast p2, Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {p2}, Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;->getService()Lcom/offsec/nethunter/gps/LocationUpdateService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/offsec/nethunter/AppNavHomeActivity;->-$$Nest$fputlocationService(Lcom/offsec/nethunter/AppNavHomeActivity;Lcom/offsec/nethunter/gps/LocationUpdateService;)V

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/offsec/nethunter/AppNavHomeActivity;->-$$Nest$fputupdateServiceBound(Lcom/offsec/nethunter/AppNavHomeActivity;Z)V

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->-$$Nest$fgetlocationUpdatesRequested(Lcom/offsec/nethunter/AppNavHomeActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->-$$Nest$fgetlocationService(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/offsec/nethunter/gps/LocationUpdateService;

    move-result-object p1

    iget-object p2, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-static {p2}, Lcom/offsec/nethunter/AppNavHomeActivity;->-$$Nest$fgetlocationUpdateReceiver(Lcom/offsec/nethunter/AppNavHomeActivity;)Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/offsec/nethunter/gps/LocationUpdateService;->requestUpdates(Lcom/offsec/nethunter/gps/KaliGPSUpdates$Receiver;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$2;->this$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/offsec/nethunter/AppNavHomeActivity;->-$$Nest$fputupdateServiceBound(Lcom/offsec/nethunter/AppNavHomeActivity;Z)V

    return-void
.end method
