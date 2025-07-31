.class public final synthetic Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/VideoView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/VideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda9;->f$0:Landroid/widget/VideoView;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/SettingsFragment$$ExternalSyntheticLambda9;->f$0:Landroid/widget/VideoView;

    invoke-static {v0, p1}, Lcom/offsec/nethunter/SettingsFragment;->lambda$bootanimation_start$17(Landroid/widget/VideoView;Landroid/media/MediaPlayer;)V

    return-void
.end method
