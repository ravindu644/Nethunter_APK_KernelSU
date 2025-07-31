.class public interface abstract Lcom/offsec/nethunter/AudioPlaybackWorker$Listener;
.super Ljava/lang/Object;
.source "AudioPlaybackWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/AudioPlaybackWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onPlaybackBuffering(Lcom/offsec/nethunter/AudioPlaybackWorker;)V
.end method

.method public abstract onPlaybackError(Lcom/offsec/nethunter/AudioPlaybackWorker;Ljava/lang/Throwable;)V
.end method

.method public abstract onPlaybackStarted(Lcom/offsec/nethunter/AudioPlaybackWorker;)V
.end method

.method public abstract onPlaybackStopped(Lcom/offsec/nethunter/AudioPlaybackWorker;)V
.end method
