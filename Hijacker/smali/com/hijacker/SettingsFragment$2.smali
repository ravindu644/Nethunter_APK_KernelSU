.class Lcom/hijacker/SettingsFragment$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/SettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/SettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Lcom/hijacker/CustomDialog;

    invoke-direct {p1}, Lcom/hijacker/CustomDialog;-><init>()V

    iget-object v0, p0, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v1, 0x7f100141

    invoke-virtual {v0, v1}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hijacker/CustomDialog;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v1, 0x7f100140

    invoke-virtual {v0, v1}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hijacker/CustomDialog;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v1, 0x7f100196

    invoke-virtual {v0, v1}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/hijacker/SettingsFragment$2$1;

    invoke-direct {v1, p0}, Lcom/hijacker/SettingsFragment$2$1;-><init>(Lcom/hijacker/SettingsFragment$2;)V

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/CustomDialog;->setPositiveButton(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v1, 0x7f10003e

    invoke-virtual {v0, v1}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/CustomDialog;->setNegativeButton(Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    invoke-virtual {v0}, Lcom/hijacker/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CustomDialog for reset confirmation"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/CustomDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
