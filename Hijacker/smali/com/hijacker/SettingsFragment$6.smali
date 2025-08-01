.class Lcom/hijacker/SettingsFragment$6;
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

    iput-object p1, p0, Lcom/hijacker/SettingsFragment$6;->this$0:Lcom/hijacker/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "https://github.com/chrisk44/Hijacker"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/hijacker/SettingsFragment$6;->this$0:Lcom/hijacker/SettingsFragment;

    invoke-virtual {v0, p1}, Lcom/hijacker/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
