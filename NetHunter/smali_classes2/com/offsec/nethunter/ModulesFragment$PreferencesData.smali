.class public Lcom/offsec/nethunter/ModulesFragment$PreferencesData;
.super Ljava/lang/Object;
.source "ModulesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nethunter/ModulesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferencesData"
.end annotation


# static fields
.field private static final PREF_NAME:Ljava/lang/String; = "com.offsec.nethunter_preferences"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.offsec.nethunter_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/offsec/nethunter/ModulesFragment$PreferencesData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/offsec/nethunter/ModulesFragment$PreferencesData;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
