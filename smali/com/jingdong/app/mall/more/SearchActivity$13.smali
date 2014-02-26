.class Lcom/jingdong/app/mall/more/SearchActivity$13;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$13;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SearchActivity$13;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->dialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SearchActivity;->access$14(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 579
    return-void
.end method
