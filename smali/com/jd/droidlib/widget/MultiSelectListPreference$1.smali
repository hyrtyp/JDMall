.class Lcom/jd/droidlib/widget/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/droidlib/widget/MultiSelectListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/droidlib/widget/MultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/jd/droidlib/widget/MultiSelectListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/droidlib/widget/MultiSelectListPreference$1;->this$0:Lcom/jd/droidlib/widget/MultiSelectListPreference;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/jd/droidlib/widget/MultiSelectListPreference$1;->this$0:Lcom/jd/droidlib/widget/MultiSelectListPreference;

    #getter for: Lcom/jd/droidlib/widget/MultiSelectListPreference;->checkedEntryIndexes:[Z
    invoke-static {v0}, Lcom/jd/droidlib/widget/MultiSelectListPreference;->access$0(Lcom/jd/droidlib/widget/MultiSelectListPreference;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 100
    return-void
.end method
