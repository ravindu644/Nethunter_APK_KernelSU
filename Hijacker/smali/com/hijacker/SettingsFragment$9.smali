.class Lcom/hijacker/SettingsFragment$9;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/SettingsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/SettingsFragment;

.field final synthetic val$mainActivity:Lcom/hijacker/MainActivity;


# direct methods
.method constructor <init>(Lcom/hijacker/SettingsFragment;Lcom/hijacker/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/SettingsFragment$9;->this$0:Lcom/hijacker/SettingsFragment;

    iput-object p2, p0, Lcom/hijacker/SettingsFragment$9;->val$mainActivity:Lcom/hijacker/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/hijacker/MainActivity;->loadPreferences()V

    iget-object p1, p0, Lcom/hijacker/SettingsFragment$9;->val$mainActivity:Lcom/hijacker/MainActivity;

    iget-object p1, p1, Lcom/hijacker/MainActivity;->watchdogTask:Lcom/hijacker/WatchdogTask;

    invoke-virtual {p1}, Lcom/hijacker/WatchdogTask;->isRunning()Z

    move-result p1

    sget-boolean p2, Lcom/hijacker/MainActivity;->watchdog:Z

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/hijacker/SettingsFragment$9;->val$mainActivity:Lcom/hijacker/MainActivity;

    new-instance p2, Lcom/hijacker/WatchdogTask;

    iget-object v0, p0, Lcom/hijacker/SettingsFragment$9;->this$0:Lcom/hijacker/SettingsFragment;

    invoke-virtual {v0}, Lcom/hijacker/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/hijacker/WatchdogTask;-><init>(Landroid/content/Context;)V

    iput-object p2, p1, Lcom/hijacker/MainActivity;->watchdogTask:Lcom/hijacker/WatchdogTask;

    iget-object p1, p0, Lcom/hijacker/SettingsFragment$9;->val$mainActivity:Lcom/hijacker/MainActivity;

    iget-object p1, p1, Lcom/hijacker/MainActivity;->watchdogTask:Lcom/hijacker/WatchdogTask;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Lcom/hijacker/WatchdogTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    sget-boolean p2, Lcom/hijacker/MainActivity;->watchdog:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/hijacker/SettingsFragment$9;->val$mainActivity:Lcom/hijacker/MainActivity;

    iget-object p1, p1, Lcom/hijacker/MainActivity;->watchdogTask:Lcom/hijacker/WatchdogTask;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/hijacker/WatchdogTask;->cancel(Z)Z

    :cond_1
    :goto_0
    return-void
.end method
