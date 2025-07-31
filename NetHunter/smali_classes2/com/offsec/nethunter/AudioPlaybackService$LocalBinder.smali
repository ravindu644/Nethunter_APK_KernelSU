.class public Lcom/offsec/nethunter/AudioPlaybackService$LocalBinder;
.super Landroid/os/Binder;
.source "AudioPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/AudioPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalBinder"
.end annotation


# instance fields
.field private final service:Lcom/offsec/nethunter/AudioPlaybackService;


# direct methods
.method public constructor <init>(Lcom/offsec/nethunter/AudioPlaybackService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/AudioPlaybackService$LocalBinder;->service:Lcom/offsec/nethunter/AudioPlaybackService;

    return-void
.end method


# virtual methods
.method public getService()Lcom/offsec/nethunter/AudioPlaybackService;
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AudioPlaybackService$LocalBinder;->service:Lcom/offsec/nethunter/AudioPlaybackService;

    return-object v0
.end method
