.class public final synthetic Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/gps/LocationUpdateService;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/gps/LocationUpdateService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/gps/LocationUpdateService$$ExternalSyntheticLambda2;->f$0:Lcom/offsec/nethunter/gps/LocationUpdateService;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/gps/LocationUpdateService;->lambda$new$2$com-offsec-nethunter-gps-LocationUpdateService(Landroid/location/Location;)V

    return-void
.end method
