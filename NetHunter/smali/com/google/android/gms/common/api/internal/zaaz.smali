.class final Lcom/google/android/gms/common/api/internal/zaaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# instance fields
.field final synthetic zaa:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

.field final synthetic zac:Lcom/google/android/gms/common/api/internal/zabe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabe;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/common/api/internal/StatusPendingResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Lcom/google/android/gms/common/api/internal/zabe;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zab:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zaa:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zab:Lcom/google/android/gms/common/api/internal/StatusPendingResult;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zaaz;->zac:Lcom/google/android/gms/common/api/internal/zabe;

    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2}, Lcom/google/android/gms/common/api/internal/zabe;->zah(Lcom/google/android/gms/common/api/internal/zabe;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/internal/StatusPendingResult;Z)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
