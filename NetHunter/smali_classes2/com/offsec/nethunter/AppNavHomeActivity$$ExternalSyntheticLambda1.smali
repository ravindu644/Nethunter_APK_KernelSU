.class public final synthetic Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/AppNavHomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/AppNavHomeActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/offsec/nethunter/AppNavHomeActivity$$ExternalSyntheticLambda1;->f$0:Lcom/offsec/nethunter/AppNavHomeActivity;

    invoke-virtual {v0, p1}, Lcom/offsec/nethunter/AppNavHomeActivity;->lambda$setupDrawerContent$2$com-offsec-nethunter-AppNavHomeActivity(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
