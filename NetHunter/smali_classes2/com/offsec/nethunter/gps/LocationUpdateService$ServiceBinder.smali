.class public Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;
.super Landroid/os/Binder;
.source "LocationUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/gps/LocationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;


# direct methods
.method public constructor <init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/offsec/nethunter/gps/LocationUpdateService;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$ServiceBinder;->this$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    return-object v0
.end method
