.class Lcom/hijacker/SettingsFragment$7;
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

    iput-object p1, p0, Lcom/hijacker/SettingsFragment$7;->this$0:Lcom/hijacker/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance p1, Lcom/hijacker/FileExplorerDialog;

    invoke-direct {p1}, Lcom/hijacker/FileExplorerDialog;-><init>()V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/hijacker/FileExplorerDialog;->setToSelect(I)V

    new-instance v0, Lcom/hijacker/RootFile;

    const-string v1, "/data/local/"

    invoke-direct {v0, v1}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/hijacker/FileExplorerDialog;->setStartingDir(Lcom/hijacker/RootFile;)V

    new-instance v0, Lcom/hijacker/SettingsFragment$7$1;

    invoke-direct {v0, p0, p1}, Lcom/hijacker/SettingsFragment$7$1;-><init>(Lcom/hijacker/SettingsFragment$7;Lcom/hijacker/FileExplorerDialog;)V

    invoke-virtual {p1, v0}, Lcom/hijacker/FileExplorerDialog;->setOnSelect(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/hijacker/SettingsFragment$7;->this$0:Lcom/hijacker/SettingsFragment;

    invoke-virtual {v0}, Lcom/hijacker/SettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "FileExplorerDialog"

    invoke-virtual {p1, v0, v1}, Lcom/hijacker/FileExplorerDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
