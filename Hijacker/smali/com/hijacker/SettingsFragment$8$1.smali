.class Lcom/hijacker/SettingsFragment$8$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/SettingsFragment$8;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/SettingsFragment$8;


# direct methods
.method constructor <init>(Lcom/hijacker/SettingsFragment$8;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/SettingsFragment$8$1;->this$1:Lcom/hijacker/SettingsFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/hijacker/SettingsFragment$8$1;->this$1:Lcom/hijacker/SettingsFragment$8;

    iget-object v0, v0, Lcom/hijacker/SettingsFragment$8;->this$0:Lcom/hijacker/SettingsFragment;

    invoke-virtual {v0}, Lcom/hijacker/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hijacker/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hijacker/MainActivity;->checkForUpdate(Z)V

    return-void
.end method
