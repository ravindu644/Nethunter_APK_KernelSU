.class public final synthetic Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$$ExternalSyntheticLambda0;->f$0:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/offsec/nethunter/ModulesFragment$ModuleListAdapter;->lambda$getView$0(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
