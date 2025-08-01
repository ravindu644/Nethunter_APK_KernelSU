.class public Lcom/hijacker/SettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsFragment.java"


# static fields
.field static allow_prefix:Z = false


# instance fields
.field lastVersionClick:J

.field listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field versionClicks:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/hijacker/SettingsFragment;->versionClicks:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hijacker/SettingsFragment;->lastVersionClick:J

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130001

    invoke-virtual {p0, p1}, Lcom/hijacker/SettingsFragment;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/hijacker/MainActivity;->isArchValid()Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "prefix"

    const-string v2, "install_nexmon"

    if-nez p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/hijacker/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f1000b8

    invoke-virtual {p0, v4}, Lcom/hijacker/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/hijacker/MainActivity;->arch:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/hijacker/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    sget-boolean p1, Lcom/hijacker/SettingsFragment;->allow_prefix:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/hijacker/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    const-string p1, "test_tools"

    invoke-virtual {p0, p1}, Lcom/hijacker/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lcom/hijacker/SettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/hijacker/SettingsFragment$1;-><init>(Lcom/hijacker/SettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "reset_pref"

    invoke-virtual {p0, p1}, Lcom/hijacker/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lcom/hijacker/SettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/hijacker/SettingsFragment$2;-><init>(Lcom/hijacker/SettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "copy_sample_button"

    invoke-virtual {p0, p1}, Lcom/hijacker/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lcom/hijacker/SettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/hijacker/SettingsFragment$3;-><init>(Lcom/hijacker/SettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0, v2}, Lcom/hijacker/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lcom/hijacker/SettingsFragment$4;

    invoke-direct {v0, p0}, Lcom/hijacker/SettingsFragment$4;-><init>(Lcom/hijacker/SettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "send_feedback"

    invoke-virtual {p0, p1}, Lcom/hijacker/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lcom/hijacker/SettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/hijacker/SettingsFragment$5;-><init>(Lcom/hijacker/SettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "github"

    invoke-virtual {p0, p1}, Lcom/hijacker/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lcom/hijacker/SettingsFragment$6;

    invoke-direct {v0, p0}, Lcom/hijacker/SettingsFragment$6;-><init>(Lcom/hijacker/SettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "chroot_dir"

    invoke-virtual {p0, p1}, Lcom/hijacker/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lcom/hijacker/SettingsFragment$7;

    invoke-direct {v0, p0}, Lcom/hijacker/SettingsFragment$7;-><init>(Lcom/hijacker/SettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "update_on_startup"

    invoke-virtual {p0, p1}, Lcom/hijacker/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lcom/hijacker/SettingsFragment$8;

    invoke-direct {v0, p0}, Lcom/hijacker/SettingsFragment$8;-><init>(Lcom/hijacker/SettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "version"

    invoke-virtual {p0, p1}, Lcom/hijacker/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    sget-object v0, Lcom/hijacker/MainActivity;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/hijacker/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/hijacker/SettingsFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const v0, 0x7f09012e

    sput v0, Lcom/hijacker/MainActivity;->currentFragment:I

    invoke-virtual {p0}, Lcom/hijacker/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->refreshDrawer()V

    new-instance v1, Lcom/hijacker/SettingsFragment$9;

    invoke-direct {v1, p0, v0}, Lcom/hijacker/SettingsFragment$9;-><init>(Lcom/hijacker/SettingsFragment;Lcom/hijacker/MainActivity;)V

    iput-object v1, p0, Lcom/hijacker/SettingsFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {p0}, Lcom/hijacker/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/hijacker/SettingsFragment;->listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
