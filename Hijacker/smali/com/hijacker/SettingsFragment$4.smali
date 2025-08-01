.class Lcom/hijacker/SettingsFragment$4;
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

    iput-object p1, p0, Lcom/hijacker/SettingsFragment$4;->this$0:Lcom/hijacker/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Lcom/hijacker/InstallFirmwareDialog;

    invoke-direct {p1}, Lcom/hijacker/InstallFirmwareDialog;-><init>()V

    sget-object v0, Lcom/hijacker/MainActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "InstallFirmwareDialog"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/InstallFirmwareDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
