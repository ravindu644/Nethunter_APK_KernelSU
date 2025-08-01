.class Lcom/hijacker/SettingsFragment$2$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/SettingsFragment$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/SettingsFragment$2;


# direct methods
.method constructor <init>(Lcom/hijacker/SettingsFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f1000b2

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iface"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f100131

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefix"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f100089

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable_monMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f10007f

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disable_monMode"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f10008a

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "enable_on_airodump"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f100071

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deauthWait"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f10015e

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "show_notif"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f10015d

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "show_details"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f100023

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "airOnStartup"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f100075

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "debug"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f100079

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "delete_extra"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f10002a

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "always_cap"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f100052

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chroot_dir"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f1000e2

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "monstart"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "custom_chroot_cmd"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f10005d

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "cont_on_fail"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f10018e

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "watchdog"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f10017c

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "target_deauth"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/hijacker/SettingsFragment$2$1;->this$1:Lcom/hijacker/SettingsFragment$2;

    iget-object v1, v1, Lcom/hijacker/SettingsFragment$2;->this$0:Lcom/hijacker/SettingsFragment;

    const v2, 0x7f100032

    invoke-virtual {v1, v2}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "update_on_startup"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/hijacker/MainActivity;->pref_edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/hijacker/MainActivity;->loadPreferences()V

    return-void
.end method
