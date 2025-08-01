.class Lcom/hijacker/DevOptionsFragment$1;
.super Ljava/lang/Object;
.source "DevOptionsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/DevOptionsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/DevOptionsFragment;


# direct methods
.method constructor <init>(Lcom/hijacker/DevOptionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/DevOptionsFragment$1;->this$0:Lcom/hijacker/DevOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/hijacker/AP;->getAPByMac(Ljava/lang/String;)Lcom/hijacker/AP;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hijacker/AP;->crack()V

    const/4 p1, 0x0

    return p1
.end method
