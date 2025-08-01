.class public Lcom/hijacker/DevOptionsFragment;
.super Landroid/preference/PreferenceFragment;
.source "DevOptionsFragment.java"


# instance fields
.field fragmentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 p1, 0x7f130000

    invoke-virtual {p0, p1}, Lcom/hijacker/DevOptionsFragment;->addPreferencesFromResource(I)V

    const-string p1, "causeNPE"

    invoke-virtual {p0, p1}, Lcom/hijacker/DevOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lcom/hijacker/DevOptionsFragment$1;

    invoke-direct {v0, p0}, Lcom/hijacker/DevOptionsFragment$1;-><init>(Lcom/hijacker/DevOptionsFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "testChroot"

    invoke-virtual {p0, p1}, Lcom/hijacker/DevOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    new-instance v0, Lcom/hijacker/DevOptionsFragment$2;

    invoke-direct {v0, p0}, Lcom/hijacker/DevOptionsFragment$2;-><init>(Lcom/hijacker/DevOptionsFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const v0, 0x7f09012e

    sput v0, Lcom/hijacker/MainActivity;->currentFragment:I

    invoke-virtual {p0}, Lcom/hijacker/DevOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/hijacker/MainActivity;

    invoke-virtual {v0}, Lcom/hijacker/MainActivity;->refreshDrawer()V

    invoke-virtual {p0}, Lcom/hijacker/DevOptionsFragment;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/DevOptionsFragment;->fragmentView:Landroid/view/View;

    return-void
.end method
