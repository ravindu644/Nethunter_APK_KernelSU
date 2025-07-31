.class Lcom/offsec/nethunter/gps/LocationUpdateService$1;
.super Ljava/lang/Object;
.source "LocationUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/gps/LocationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "TimerTask Exception: "

    const-wide/16 v1, 0x3e8

    :try_start_0
    iget-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-static {v3}, Lcom/offsec/nethunter/gps/LocationUpdateService;->-$$Nest$fgetlastLocationLatitude(Lcom/offsec/nethunter/gps/LocationUpdateService;)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-static {v3}, Lcom/offsec/nethunter/gps/LocationUpdateService;->-$$Nest$mupdateNotification(Lcom/offsec/nethunter/gps/LocationUpdateService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-static {v0}, Lcom/offsec/nethunter/gps/LocationUpdateService;->-$$Nest$fgettimerTaskHandler(Lcom/offsec/nethunter/gps/LocationUpdateService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-static {v3}, Lcom/offsec/nethunter/gps/LocationUpdateService;->-$$Nest$fgettimerTask(Lcom/offsec/nethunter/gps/LocationUpdateService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "LocationUpdateService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    iget-object v3, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-static {v3}, Lcom/offsec/nethunter/gps/LocationUpdateService;->-$$Nest$fgettimerTaskHandler(Lcom/offsec/nethunter/gps/LocationUpdateService;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$1;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-static {v4}, Lcom/offsec/nethunter/gps/LocationUpdateService;->-$$Nest$fgettimerTask(Lcom/offsec/nethunter/gps/LocationUpdateService;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v0
.end method
