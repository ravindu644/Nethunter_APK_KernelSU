.class Lcom/hijacker/SettingsFragment$7$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/SettingsFragment$7;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/SettingsFragment$7;

.field final synthetic val$dialog:Lcom/hijacker/FileExplorerDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/SettingsFragment$7;Lcom/hijacker/FileExplorerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/SettingsFragment$7$1;->this$1:Lcom/hijacker/SettingsFragment$7;

    iput-object p2, p0, Lcom/hijacker/SettingsFragment$7$1;->val$dialog:Lcom/hijacker/FileExplorerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$7$1;->val$dialog:Lcom/hijacker/FileExplorerDialog;

    iget-object v1, v1, Lcom/hijacker/FileExplorerDialog;->result:Lcom/hijacker/RootFile;

    invoke-virtual {v1}, Lcom/hijacker/RootFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chroot_dir"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/hijacker/MainActivity;->loadPreferences()V

    return-void
.end method
