package service;

import model.BenhAn;
import repository.BenhAnRepositpry;

import java.util.List;

public class BenhAnService {
    BenhAnRepositpry benhAnRepositpry = new BenhAnRepositpry();
    public List<BenhAn> display() {
      return benhAnRepositpry.display();
    }

    public void edit(BenhAn benhAn) {
        benhAnRepositpry.edit(benhAn);
    }
    public void delete(String maBenhAn) {
        benhAnRepositpry.delete(maBenhAn);
    }
}
